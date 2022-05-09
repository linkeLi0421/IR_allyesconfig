; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/ti/pinctrl-ti-iodelay.c_pt.bc'
source_filename = "../drivers/pinctrl/ti/pinctrl-ti-iodelay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ti_iodelay_reg_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ti_iodelay_device = type { ptr, i32, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, ptr, %struct.ti_iodelay_reg_values }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.ti_iodelay_reg_values = type { i16, i16, i16, i16, i16, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.ti_iodelay_cfg = type { i16, i16, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ti_iodelay_pingroup = type { ptr, i32, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.group_desc = type { ptr, ptr, i32, ptr }

@__initcall__kmod_pinctrl_ti_iodelay__229_932_ti_iodelay_driver_init6 = internal global ptr @ti_iodelay_driver_init, section ".initcall6.init", align 4
@ti_iodelay_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_iodelay_probe, ptr @ti_iodelay_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_iodelay_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_iodelay_driver_exit = internal global ptr @ti_iodelay_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [50 x i8] c"pinctrl_ti_iodelay.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [71 x i8] c"pinctrl_ti_iodelay.description=Pinconf driver for TI's IO Delay module\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [62 x i8] c"pinctrl_ti_iodelay.file=drivers/pinctrl/ti/pinctrl-ti-iodelay\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [34 x i8] c"pinctrl_ti_iodelay.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti-iodelay\00", [21 x i8] zeroinitializer }, align 32
@ti_iodelay_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-iodelay\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_iodelay_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"No OF node\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_iodelay_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pinctrl/ti/pinctrl-ti-iodelay.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry_ptr = internal global ptr @ti_iodelay_probe._entry, section ".printk_index", align 4
@ti_iodelay_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 837, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No DATA match\0A\00", [17 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry_ptr.8 = internal global ptr @ti_iodelay_probe._entry.6, section ".printk_index", align 4
@ti_iodelay_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Missing MEM resource\0A\00", [42 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry_ptr.11 = internal global ptr @ti_iodelay_probe._entry.9, section ".printk_index", align 4
@ti_iodelay_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pinctrl_ti_iodelay:865:(iod->reg_data->regmap_config)->lock\00", [36 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Regmap MMIO init failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry_ptr.15 = internal global ptr @ti_iodelay_probe._entry.13, section ".printk_index", align 4
@ti_iodelay_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr @ti_iodelay_pin_dbg_show, ptr @ti_iodelay_dt_node_to_map, ptr null }, [40 x i8] zeroinitializer }, align 32
@ti_iodelay_pinctrl_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @ti_iodelay_pinconf_group_get, ptr @ti_iodelay_pinconf_group_set, ptr null, ptr @ti_iodelay_pinconf_group_dbg_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register pinctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@ti_iodelay_probe._entry_ptr.18 = internal global ptr @ti_iodelay_probe._entry.16, section ".printk_index", align 4
@ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 75, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pinctrl_ti_iodelay\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ti_iodelay_pinconf_init_dev\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"refclk_period=0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid Coarse delay count (0) (reg=0x%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_init_dev._entry_ptr = internal global ptr @ti_iodelay_pinconf_init_dev._entry, section ".printk_index", align 4
@ti_iodelay_pinconf_init_dev._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid cdpe computed params = %d %d %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_init_dev._entry_ptr.25 = internal global ptr @ti_iodelay_pinconf_init_dev._entry.23, section ".printk_index", align 4
@ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.26, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"coarse: ref=0x%04x delay=0x%04x cdpe=0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_init_dev._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid Fine delay count (0) (reg=0x%08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_init_dev._entry_ptr.29 = internal global ptr @ti_iodelay_pinconf_init_dev._entry.27, section ".printk_index", align 4
@ti_iodelay_pinconf_init_dev._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid fdpe(0) computed params = %d %d %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_init_dev._entry_ptr.32 = internal global ptr @ti_iodelay_pinconf_init_dev._entry.30, section ".printk_index", align 4
@ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.33, i8 0, i8 87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fine: ref=0x%04x delay=0x%04x fdpe=0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@ti_iodelay_alloc_pins.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_iodelay_alloc_pins\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Allocating %i pins\0A\00", [44 x i8] zeroinitializer }, align 32
@ti_iodelay_offset_to_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mux offset out of range: 0x%x (0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti_iodelay_offset_to_pin\00", [39 x i8] zeroinitializer }, align 32
@ti_iodelay_offset_to_pin._entry_ptr = internal global ptr @ti_iodelay_offset_to_pin._entry, section ".printk_index", align 4
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%lx a: %i g: %i (%08x %08x %08x) %s \00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl-pin-array\00", [46 x i8] zeroinitializer }, align 32
@ti_iodelay_node_iterator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid args_count for spec: %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti_iodelay_node_iterator\00", [39 x i8] zeroinitializer }, align 32
@ti_iodelay_node_iterator._entry_ptr = internal global ptr @ti_iodelay_node_iterator._entry, section ".printk_index", align 4
@ti_iodelay_node_iterator._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not add functions for %pOFn %ux\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_iodelay_node_iterator._entry_ptr.44 = internal global ptr @ti_iodelay_node_iterator._entry.42, section ".printk_index", align 4
@ti_iodelay_node_iterator.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.41, ptr @.str.3, ptr @.str.45, i8 0, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%pOFn offset=%x a_delay = %d g_delay = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ti_iodelay_get_pingroup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s could not find pingroup %i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti_iodelay_get_pingroup\00", [40 x i8] zeroinitializer }, align 32
@ti_iodelay_get_pingroup._entry_ptr = internal global ptr @ti_iodelay_get_pingroup._entry, section ".printk_index", align 4
@ti_iodelay_pinconf_group_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported number of configurations %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti_iodelay_pinconf_group_set\00", [35 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_group_set._entry_ptr = internal global ptr @ti_iodelay_pinconf_group_set._entry, section ".printk_index", align 4
@ti_iodelay_pinconf_group_set._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported configuration\0A\00", [37 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_group_set._entry_ptr.52 = internal global ptr @ti_iodelay_pinconf_group_set._entry.50, section ".printk_index", align 4
@ti_iodelay_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Masking overflow of coarse elements %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti_iodelay_pinconf_set\00", [41 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_set._entry_ptr = internal global ptr @ti_iodelay_pinconf_set._entry, section ".printk_index", align 4
@ti_iodelay_pinconf_set._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Masking overflow of fine elements %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@ti_iodelay_pinconf_set._entry_ptr.57 = internal global ptr @ti_iodelay_pinconf_set._entry.55, section ".printk_index", align 4
@ti_iodelay_pinconf_set.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.54, ptr @.str.3, ptr @.str.58, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Set reg 0x%x Delay(a: %d g: %d), Elements(C=%d F=%d)0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0A\090x%08x = 0x%08x (%3d, %3d)\00", [35 x i8] zeroinitializer }, align 32
@dra7_iodelay_data = internal global { %struct.ti_iodelay_reg_data, [40 x i8] } { %struct.ti_iodelay_reg_data { i32 258048, i32 41, i32 1024, i32 1, i32 0, i32 992, i32 31, i32 20, i32 65535, i32 24, i32 -65536, i32 65535, i32 28, i32 -65536, i32 65535, i32 44, i32 65535, i32 43690, i32 43691, i32 48, i32 3, ptr @dra7_iodelay_regmap_config }, [40 x i8] zeroinitializer }, align 32
@dra7_iodelay_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3356, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"ti_iodelay_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 924, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 928, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"ti_iodelay_of_match\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 807, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 830, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 837, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 852, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 864, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 867, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"ti_iodelay_pinctrl_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 716, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant [31 x i8] c"ti_iodelay_pinctrl_pinconf_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 726, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 888, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 300, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 310, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 318, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 323, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 334, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 342, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 347, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 751, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 403, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 676, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 491, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 442, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 455, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 464, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 382, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 616, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 622, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 241, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 250, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 266, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 710, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant [18 x i8] c"dra7_iodelay_data\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 777, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"dra7_iodelay_regmap_config\00", align 1
@___asan_gen_.250 = private constant [43 x i8] c"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 770, i32 29 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_ti_iodelay_driver_exit, ptr @__initcall__kmod_pinctrl_ti_iodelay__229_932_ti_iodelay_driver_init6, ptr @ti_iodelay_driver_exit, ptr @ti_iodelay_get_pingroup._entry, ptr @ti_iodelay_get_pingroup._entry_ptr, ptr @ti_iodelay_node_iterator._entry, ptr @ti_iodelay_node_iterator._entry.42, ptr @ti_iodelay_node_iterator._entry_ptr, ptr @ti_iodelay_node_iterator._entry_ptr.44, ptr @ti_iodelay_offset_to_pin._entry, ptr @ti_iodelay_offset_to_pin._entry_ptr, ptr @ti_iodelay_pinconf_group_set._entry, ptr @ti_iodelay_pinconf_group_set._entry.50, ptr @ti_iodelay_pinconf_group_set._entry_ptr, ptr @ti_iodelay_pinconf_group_set._entry_ptr.52, ptr @ti_iodelay_pinconf_init_dev._entry, ptr @ti_iodelay_pinconf_init_dev._entry.23, ptr @ti_iodelay_pinconf_init_dev._entry.27, ptr @ti_iodelay_pinconf_init_dev._entry.30, ptr @ti_iodelay_pinconf_init_dev._entry_ptr, ptr @ti_iodelay_pinconf_init_dev._entry_ptr.25, ptr @ti_iodelay_pinconf_init_dev._entry_ptr.29, ptr @ti_iodelay_pinconf_init_dev._entry_ptr.32, ptr @ti_iodelay_pinconf_set._entry, ptr @ti_iodelay_pinconf_set._entry.55, ptr @ti_iodelay_pinconf_set._entry_ptr, ptr @ti_iodelay_pinconf_set._entry_ptr.57, ptr @ti_iodelay_probe._entry, ptr @ti_iodelay_probe._entry.13, ptr @ti_iodelay_probe._entry.16, ptr @ti_iodelay_probe._entry.6, ptr @ti_iodelay_probe._entry.9, ptr @ti_iodelay_probe._entry_ptr, ptr @ti_iodelay_probe._entry_ptr.11, ptr @ti_iodelay_probe._entry_ptr.15, ptr @ti_iodelay_probe._entry_ptr.18, ptr @ti_iodelay_probe._entry_ptr.8, ptr @ti_iodelay_driver, ptr @.str, ptr @ti_iodelay_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @ti_iodelay_probe._key, ptr @.str.12, ptr @.str.14, ptr @ti_iodelay_pinctrl_ops, ptr @ti_iodelay_pinctrl_pinconf_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @dra7_iodelay_data, ptr @dra7_iodelay_regmap_config], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinctrl_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_init_dev._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_init_dev._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_init_dev._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_offset_to_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_node_iterator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_node_iterator._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_get_pingroup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_group_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_group_set._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_iodelay_pinconf_set._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_iodelay_data to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_iodelay_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_iodelay_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_iodelay_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_iodelay_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_iodelay_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_iodelay_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_node_get(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %exit_out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @ti_iodelay_of_match, ptr noundef %dev1) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %exit_out

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.exit_out_crit_edge, label %if.end12

if.end8.exit_out_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_out

if.end12:                                         ; preds = %if.end8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %reg_data = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %reg_data, align 4
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %exit_out

if.end20:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call14, align 4
  %phys_base = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %phys_base, align 4
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call14) #6
  %reg_base = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call21 to i32
  br label %exit_out

if.end27:                                         ; preds = %if.end20
  %11 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_data, align 4
  %regmap_config = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %regmap_config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_config, align 4
  %call30 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call21, ptr noundef %14, ptr noundef nonnull @ti_iodelay_probe._key, ptr noundef nonnull @.str.12) #6
  %regmap = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %regmap, align 4
  %cmp.i113 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %exit_out

if.end39:                                         ; preds = %if.end27
  %call40 = tail call fastcc i32 @ti_iodelay_pinconf_init_dev(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.exit_out_crit_edge

if.end39.exit_out_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_out

if.end43:                                         ; preds = %if.end39
  %19 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_data, align 4
  %regmap_config.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %regmap_config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_config.i, align 4
  %max_register.i = getelementptr inbounds %struct.regmap_config, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %max_register.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_register.i, align 4
  %reg_start_offset.i.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %20, i32 0, i32 19
  %25 = ptrtoint ptr %reg_start_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_start_offset.i.i, align 4
  %sub.i.i = sub i32 %24, %26
  %reg_stride.i.i = getelementptr inbounds %struct.regmap_config, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %reg_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_stride.i.i, align 4
  %div.i.i = udiv i32 %sub.i.i, %28
  %reg_nr_per_pin.i.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %20, i32 0, i32 20
  %29 = ptrtoint ptr %reg_nr_per_pin.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_nr_per_pin.i.i, align 4
  %div4.i.i = udiv i32 %div.i.i, %30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_iodelay_alloc_pins.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_iodelay_probe, %do.end.i)) #6
          to label %if.then.i [label %do.end.i], !srcloc !140

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_iodelay_alloc_pins.__UNIQUE_ID_ddebug228, ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %div4.i.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end43
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div4.i.i, i32 12) #6
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !141

devm_kcalloc.exit.thread.i:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pa36.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %pa36.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %pa36.i, align 4
  br label %exit_out

devm_kcalloc.exit.i:                              ; preds = %do.end.i
  %34 = extractvalue { i32, i1 } %31, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %34, i32 noundef 3520) #6
  %pa.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i.i, ptr %pa.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i, label %devm_kcalloc.exit.i.exit_out_crit_edge, label %if.end9.i

devm_kcalloc.exit.i.exit_out_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_out

if.end9.i:                                        ; preds = %devm_kcalloc.exit.i
  %pins.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %pins.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i.i, ptr %pins.i, align 4
  %npins.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div4.i.i, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %div.i.i)
  %cmp38.not.i = icmp ugt i32 %30, %div.i.i
  br i1 %cmp38.not.i, label %if.end9.i.if.end48_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.if.end48_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %i.039.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pa.i, align 4
  %arrayidx.i = getelementptr %struct.pinctrl_pin_desc, ptr %39, i32 %i.039.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %i.039.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div4.i.i
  br i1 %exitcond.not.i, label %for.body.i.if.end48_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end48_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end48:                                         ; preds = %for.body.i.if.end48_crit_edge, %if.end9.i.if.end48_crit_edge
  %desc = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 5
  %pctlops = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 5, i32 3
  %41 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ti_iodelay_pinctrl_ops, ptr %pctlops, align 4
  %confops = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 5, i32 5
  %42 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ti_iodelay_pinctrl_pinconf_ops, ptr %confops, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.dev_name.exit_crit_edge

if.end48.dev_name.exit_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end48.dev_name.exit_crit_edge
  %retval.0.i114 = phi ptr [ %46, %if.end.i ], [ %44, %if.end48.dev_name.exit_crit_edge ]
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i114, ptr %desc, align 4
  %owner = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 5, i32 6
  %48 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %owner, align 4
  %pctl = getelementptr inbounds %struct.ti_iodelay_device, ptr %call.i, i32 0, i32 4
  %call54 = tail call i32 @pinctrl_register_and_init(ptr noundef %desc, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef %pctl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %exit_out

if.end60:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pctl, align 4
  %call62 = tail call i32 @pinctrl_enable(ptr noundef %51) #6
  br label %cleanup

exit_out:                                         ; preds = %do.end59, %devm_kcalloc.exit.i.exit_out_crit_edge, %devm_kcalloc.exit.thread.i, %if.end39.exit_out_crit_edge, %do.end36, %if.then24, %do.end19, %if.end8.exit_out_crit_edge, %if.then4, %if.then
  %ret.0 = phi i32 [ %10, %if.then24 ], [ %18, %do.end36 ], [ %call40, %if.end39.exit_out_crit_edge ], [ %call54, %do.end59 ], [ -19, %do.end19 ], [ -22, %if.then4 ], [ -22, %if.then ], [ -12, %if.end8.exit_out_crit_edge ], [ -12, %devm_kcalloc.exit.i.exit_out_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ]
  tail call void @of_node_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_out, %if.end60
  %retval.0 = phi i32 [ %ret.0, %exit_out ], [ %call62, %if.end60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_iodelay_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pctl = getelementptr inbounds %struct.ti_iodelay_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pinctrl_unregister(ptr noundef nonnull %3) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %reg_data.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %reg_global_lock_offset.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %reg_global_lock_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_global_lock_offset.i, align 4
  %global_lock_mask.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %global_lock_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global_lock_mask.i, align 4
  %global_lock_val.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %5, i32 0, i32 18
  %12 = ptrtoint ptr %global_lock_val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %global_lock_val.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_iodelay_pinconf_init_dev(ptr nocapture noundef %iod) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 7
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iod, align 4
  %reg_init_conf_values = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !142
  %regmap = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %reg_global_lock_offset = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %reg_global_lock_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_global_lock_offset, align 4
  %global_lock_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %global_lock_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global_lock_mask, align 4
  %global_unlock_val = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %global_unlock_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global_unlock_val, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %reg_refclk_offset = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %reg_refclk_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_refclk_offset, align 4
  %call3 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %refclk_period_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %refclk_period_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %refclk_period_mask, align 4
  %and.i = and i32 %20, %18
  %21 = call i32 @llvm.cttz.i32(i32 %20, i1 false) #6, !range !143
  %shr.i = lshr i32 %and.i, %21
  %conv = trunc i32 %shr.i to i16
  %ref_clk_period = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 4
  %22 = ptrtoint ptr %ref_clk_period to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %ref_clk_period, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_iodelay_pinconf_init_dev, %do.end)) #6
          to label %if.then13 [label %do.end], !srcloc !140

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %ref_clk_period to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ref_clk_period, align 4
  %conv15 = zext i16 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug224, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %conv15) #6
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end6
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %reg_coarse_offset = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %reg_coarse_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_coarse_offset, align 4
  %call18 = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %do.end
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %coarse_ref_count_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %coarse_ref_count_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %coarse_ref_count_mask, align 4
  %and.i199 = and i32 %32, %30
  %33 = call i32 @llvm.cttz.i32(i32 %32, i1 false) #6, !range !143
  %shr.i200 = lshr i32 %and.i199, %33
  %conv23 = trunc i32 %shr.i200 to i16
  %34 = ptrtoint ptr %reg_init_conf_values to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv23, ptr %reg_init_conf_values, align 4
  %coarse_delay_count_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %coarse_delay_count_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %coarse_delay_count_mask, align 4
  %and.i201 = and i32 %36, %30
  %37 = call i32 @llvm.cttz.i32(i32 %36, i1 false) #6, !range !143
  %shr.i202 = lshr i32 %and.i201, %37
  %conv25 = trunc i32 %shr.i202 to i16
  %coarse_delay_count = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %coarse_delay_count to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv25, ptr %coarse_delay_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv25)
  %tobool27.not = icmp eq i16 %conv25, 0
  br i1 %tobool27.not, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %30) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %39 = ptrtoint ptr %ref_clk_period to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ref_clk_period, align 4
  %conv.i = zext i16 %40 to i64
  %conv23.mask = and i32 %shr.i200, 65535
  %narrow221 = mul nuw nsw i32 %conv23.mask, 10
  %mul.i = zext i32 %narrow221 to i64
  %mul2.i = mul nuw nsw i64 %mul.i, %conv.i
  %conv25.mask = shl i32 %shr.i202, 1
  %41 = and i32 %conv25.mask, 131070
  %narrow = mul nuw nsw i32 %41, 88
  %mul6.i = zext i32 %narrow to i64
  %call.i203 = call i64 @div64_u64(i64 noundef %mul2.i, i64 noundef %mul6.i) #6
  %conv7.i = trunc i64 %call.i203 to i32
  %cdpe = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 5
  %42 = ptrtoint ptr %cdpe to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv7.i, ptr %cdpe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7.i)
  %tobool38.not = icmp eq i32 %conv7.i, 0
  br i1 %tobool38.not, label %do.end42, label %do.body50

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %ref_clk_period to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ref_clk_period, align 4
  %conv44 = zext i16 %44 to i32
  %45 = ptrtoint ptr %reg_init_conf_values to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %reg_init_conf_values, align 4
  %conv46 = zext i16 %46 to i32
  %47 = ptrtoint ptr %coarse_delay_count to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %coarse_delay_count, align 2
  %conv48 = zext i16 %48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %conv44, i32 noundef %conv46, i32 noundef %conv48) #9
  br label %cleanup

do.body50:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_iodelay_pinconf_init_dev, %do.end73)) #6
          to label %if.then64 [label %do.end73], !srcloc !140

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iod, align 4
  %51 = ptrtoint ptr %reg_init_conf_values to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %reg_init_conf_values, align 4
  %conv67 = zext i16 %52 to i32
  %53 = ptrtoint ptr %coarse_delay_count to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %coarse_delay_count, align 2
  %conv69 = zext i16 %54 to i32
  %55 = ptrtoint ptr %cdpe to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cdpe, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug225, ptr noundef %50, ptr noundef nonnull @.str.26, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %56) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then64, %do.body50
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %reg_fine_offset = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 12
  %59 = ptrtoint ptr %reg_fine_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_fine_offset, align 4
  %call75 = call i32 @regmap_read(ptr noundef %58, i32 noundef %60, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %do.end73.cleanup_crit_edge

do.end73.cleanup_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78:                                         ; preds = %do.end73
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  %fine_ref_count_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %fine_ref_count_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fine_ref_count_mask, align 4
  %and.i204 = and i32 %64, %62
  %65 = call i32 @llvm.cttz.i32(i32 %64, i1 false) #6, !range !143
  %shr.i205 = lshr i32 %and.i204, %65
  %conv80 = trunc i32 %shr.i205 to i16
  %fine_ref_count = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 2
  %66 = ptrtoint ptr %fine_ref_count to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv80, ptr %fine_ref_count, align 4
  %fine_delay_count_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 13
  %67 = ptrtoint ptr %fine_delay_count_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fine_delay_count_mask, align 4
  %and.i206 = and i32 %68, %62
  %69 = call i32 @llvm.cttz.i32(i32 %68, i1 false) #6, !range !143
  %shr.i207 = lshr i32 %and.i206, %69
  %conv82 = trunc i32 %shr.i207 to i16
  %fine_delay_count = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 3
  %70 = ptrtoint ptr %fine_delay_count to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv82, ptr %fine_delay_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv82)
  %tobool84.not = icmp eq i16 %conv82, 0
  br i1 %tobool84.not, label %do.end88, label %if.end89

do.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %62) #9
  br label %cleanup

if.end89:                                         ; preds = %if.end78
  %71 = ptrtoint ptr %ref_clk_period to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ref_clk_period, align 4
  %conv.i208 = zext i16 %72 to i64
  %conv80.mask = and i32 %shr.i205, 65535
  %narrow222 = mul nuw nsw i32 %conv80.mask, 10
  %mul.i209 = zext i32 %narrow222 to i64
  %mul2.i211 = mul nuw nsw i64 %mul.i209, %conv.i208
  %conv82.mask = shl i32 %shr.i207, 1
  %73 = and i32 %conv82.mask, 131070
  %narrow220 = mul nuw nsw i32 %73, 264
  %mul6.i214 = zext i32 %narrow220 to i64
  %call.i215 = call i64 @div64_u64(i64 noundef %mul2.i211, i64 noundef %mul6.i214) #6
  %conv7.i216 = trunc i64 %call.i215 to i32
  %fdpe = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 6
  %74 = ptrtoint ptr %fdpe to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv7.i216, ptr %fdpe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7.i216)
  %tobool95.not = icmp eq i32 %conv7.i216, 0
  br i1 %tobool95.not, label %do.end99, label %do.body107

do.end99:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %ref_clk_period to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ref_clk_period, align 4
  %conv101 = zext i16 %76 to i32
  %77 = ptrtoint ptr %fine_ref_count to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %fine_ref_count, align 4
  %conv103 = zext i16 %78 to i32
  %79 = ptrtoint ptr %fine_delay_count to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %fine_delay_count, align 2
  %conv105 = zext i16 %80 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %conv101, i32 noundef %conv103, i32 noundef %conv105) #9
  br label %cleanup

do.body107:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_iodelay_pinconf_init_dev, %cleanup)) #6
          to label %if.then121 [label %cleanup], !srcloc !140

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iod, align 4
  %83 = ptrtoint ptr %fine_ref_count to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %fine_ref_count, align 4
  %conv124 = zext i16 %84 to i32
  %85 = ptrtoint ptr %fine_delay_count to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %fine_delay_count, align 2
  %conv126 = zext i16 %86 to i32
  %87 = ptrtoint ptr %fdpe to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fdpe, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug226, ptr noundef %82, ptr noundef nonnull @.str.33, i32 noundef %conv124, i32 noundef %conv126, i32 noundef %88) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %do.body107, %do.end99, %do.end88, %do.end73.cleanup_crit_edge, %do.end42, %do.end31, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end99 ], [ -22, %do.end88 ], [ -22, %do.end42 ], [ -22, %do.end31 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call18, %do.end.cleanup_crit_edge ], [ %call75, %do.end73.cleanup_crit_edge ], [ 0, %if.then121 ], [ 0, %do.body107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_iodelay_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  %in = alloca i32, align 4
  %oen = alloca i32, align 4
  %out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #6
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %in, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oen) #6
  %1 = ptrtoint ptr %oen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %oen, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #6
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %out, align 4, !annotation !142
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %reg_data = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_data, align 4
  %regmap_config.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %regmap_config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_config.i, align 4
  %reg_stride.i = getelementptr inbounds %struct.regmap_config, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_stride.i, align 4
  %mul.i = mul i32 %8, %pin
  %reg_nr_per_pin.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %4, i32 0, i32 20
  %9 = ptrtoint ptr %reg_nr_per_pin.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_nr_per_pin.i, align 4
  %mul1.i = mul i32 %mul.i, %10
  %reg_start_offset.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %4, i32 0, i32 19
  %11 = ptrtoint ptr %reg_start_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_start_offset.i, align 4
  %add.i = add i32 %mul1.i, %12
  %pa = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pa, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %14, i32 %pin, i32 2
  %15 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_data, align 4
  %regmap = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %18, i32 noundef %add.i, ptr noundef nonnull %in) #6
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %21 = ptrtoint ptr %regmap_config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_config.i, align 4
  %reg_stride = getelementptr inbounds %struct.regmap_config, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_stride, align 4
  %add = add i32 %24, %add.i
  %call4 = call i32 @regmap_read(ptr noundef %20, i32 noundef %add, ptr noundef nonnull %oen) #6
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %regmap_config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_config.i, align 4
  %reg_stride7 = getelementptr inbounds %struct.regmap_config, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %reg_stride7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_stride7, align 4
  %mul = shl i32 %30, 1
  %add8 = add i32 %mul, %add.i
  %call9 = call i32 @regmap_read(ptr noundef %26, i32 noundef %add8, ptr noundef nonnull %out) #6
  %phys_base = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_base, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.cond.end15_crit_edge, label %cond.true12

entry.cond.end15_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end15

cond.true12:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %a_delay = getelementptr inbounds %struct.ti_iodelay_cfg, ptr %16, i32 0, i32 1
  %33 = ptrtoint ptr %a_delay to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %a_delay, align 2
  %conv = zext i16 %34 to i32
  %g_delay = getelementptr inbounds %struct.ti_iodelay_cfg, ptr %16, i32 0, i32 2
  %35 = ptrtoint ptr %g_delay to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %g_delay, align 2
  %conv13 = zext i16 %36 to i32
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %entry.cond.end15_crit_edge
  %cond32 = phi i32 [ %conv, %cond.true12 ], [ -1, %entry.cond.end15_crit_edge ]
  %cond16 = phi i32 [ %conv13, %cond.true12 ], [ -1, %entry.cond.end15_crit_edge ]
  %add10 = add i32 %32, %add.i
  %37 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in, align 4
  %39 = ptrtoint ptr %oen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oen, align 4
  %41 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %out, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %add10, i32 noundef %cond32, i32 noundef %cond16, i32 noundef %38, i32 noundef %40, i32 noundef %42, ptr noundef nonnull @.str) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_iodelay_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #2 align 64 {
entry:
  %pinctrl_spec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pinctrl_count_index_with_args(ptr noundef %np, ptr noundef nonnull @.str.39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup46_crit_edge, label %if.end3

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 28, i32 noundef 3520) #6
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %map, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end3.cleanup46_crit_edge, label %if.end7

if.end3.cleanup46_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end7:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_maps, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i101 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 12, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i101, null
  br i1 %tobool10.not, label %if.end7.free_map_crit_edge, label %if.end12

if.end7.free_map_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_map

if.end12:                                         ; preds = %if.end7
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call1, i32 4) #6
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end12.free_group_crit_edge, label %devm_kcalloc.exit, !prof !141

if.end12.free_group_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_group

devm_kcalloc.exit:                                ; preds = %if.end12
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #6
  %tobool15.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool15.not, label %devm_kcalloc.exit.free_group_crit_edge, label %if.end17

devm_kcalloc.exit.free_group_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_group

if.end17:                                         ; preds = %devm_kcalloc.exit
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call1, i32 6) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end17.free_pins_crit_edge, label %devm_kcalloc.exit105, !prof !141

if.end17.free_pins_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pins

devm_kcalloc.exit105:                             ; preds = %if.end17
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %15 = extractvalue { i32, i1 } %11, 0
  %call5.i.i102 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #6
  %tobool20.not = icmp eq ptr %call5.i.i102, null
  br i1 %tobool20.not, label %devm_kcalloc.exit105.free_pins_crit_edge, label %for.cond.preheader

devm_kcalloc.exit105.free_pins_crit_edge:         ; preds = %devm_kcalloc.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pins

for.cond.preheader:                               ; preds = %devm_kcalloc.exit105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp23115.not = icmp eq i32 %call1, 0
  br i1 %cmp23115.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pinctrl_spec) #6
  %16 = call ptr @memset(ptr %pinctrl_spec, i32 255, i32 72)
  %call24 = call i32 @pinctrl_parse_index_with_args(ptr noundef %np, ptr noundef nonnull @.str.39, i32 noundef %i.0116, ptr noundef nonnull %pinctrl_spec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end27:                                         ; preds = %for.body
  %call28 = call fastcc i32 @ti_iodelay_node_iterator(ptr noundef %pctldev, ptr noundef %np, ptr noundef nonnull %pinctrl_spec, ptr noundef nonnull %call5.i.i, i32 noundef %i.0116, ptr noundef nonnull %call5.i.i102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.inc, label %if.end27.cleanup.thread_crit_edge

if.end27.cleanup.thread_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end27.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %error.0.ph = phi i32 [ %call28, %if.end27.cleanup.thread_crit_edge ], [ %call24, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #6
  br label %free_data

for.inc:                                          ; preds = %if.end27
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pinctrl_spec) #6
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %17 = ptrtoint ptr %call.i101 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i102, ptr %call.i101, align 4
  %ncfg = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %call.i101, i32 0, i32 1
  %18 = ptrtoint ptr %ncfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call1, ptr %ncfg, align 4
  %config = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %call.i101, i32 0, i32 2
  %19 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 127, ptr %config, align 4
  %pctl = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pctl, align 4
  %22 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %np, align 4
  %call34 = call i32 @pinctrl_generic_add_group(ptr noundef %21, ptr noundef %23, ptr noundef nonnull %call5.i.i, i32 noundef %call1, ptr noundef nonnull %call.i101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %for.end.free_data_crit_edge, label %if.end37

for.end.free_data_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_data

if.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %type, align 4
  %27 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %np, align 4
  %29 = load ptr, ptr %map, align 4
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %data, align 4
  %31 = load ptr, ptr %map, align 4
  %configs = getelementptr inbounds %struct.pinctrl_map, ptr %31, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %config, ptr %configs, align 4
  %33 = load ptr, ptr %map, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_map, ptr %33, i32 0, i32 4, i32 0, i32 2
  %34 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %num_configs, align 4
  %35 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_maps, align 4
  br label %cleanup46

free_data:                                        ; preds = %for.end.free_data_crit_edge, %cleanup.thread
  %error.1 = phi i32 [ %call34, %for.end.free_data_crit_edge ], [ %error.0.ph, %cleanup.thread ]
  %36 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call, align 4
  call void @devm_kfree(ptr noundef %37, ptr noundef nonnull %call5.i.i102) #6
  br label %free_pins

free_pins:                                        ; preds = %free_data, %devm_kcalloc.exit105.free_pins_crit_edge, %if.end17.free_pins_crit_edge
  %error.2 = phi i32 [ %error.1, %free_data ], [ -12, %devm_kcalloc.exit105.free_pins_crit_edge ], [ -12, %if.end17.free_pins_crit_edge ]
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  call void @devm_kfree(ptr noundef %39, ptr noundef nonnull %call5.i.i) #6
  br label %free_group

free_group:                                       ; preds = %free_pins, %devm_kcalloc.exit.free_group_crit_edge, %if.end12.free_group_crit_edge
  %error.3 = phi i32 [ %error.2, %free_pins ], [ -12, %devm_kcalloc.exit.free_group_crit_edge ], [ -12, %if.end12.free_group_crit_edge ]
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 4
  call void @devm_kfree(ptr noundef %41, ptr noundef nonnull %call.i101) #6
  br label %free_map

free_map:                                         ; preds = %free_group, %if.end7.free_map_crit_edge
  %error.4 = phi i32 [ %error.3, %free_group ], [ -12, %if.end7.free_map_crit_edge ]
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call, align 4
  %44 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map, align 4
  call void @devm_kfree(ptr noundef %43, ptr noundef %45) #6
  br label %cleanup46

cleanup46:                                        ; preds = %free_map, %if.end37, %if.end3.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %error.4, %free_map ], [ 0, %if.end37 ], [ -22, %entry.cleanup46_crit_edge ], [ %call1, %if.end.cleanup46_crit_edge ], [ -12, %if.end3.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_count_index_with_args(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_parse_index_with_args(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_iodelay_node_iterator(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef readonly %pinctrl_spec, ptr nocapture noundef writeonly %pins, i32 noundef %pin_index, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_data = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  %reg_nr_per_pin = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %reg_nr_per_pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_nr_per_pin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40, i32 noundef %3) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 4
  %conv = trunc i32 %9 to i16
  %arrayidx4 = getelementptr %struct.ti_iodelay_cfg, ptr %data, i32 %pin_index
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayidx4, align 2
  %arrayidx6 = getelementptr %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %conv7 = trunc i32 %12 to i16
  %a_delay = getelementptr %struct.ti_iodelay_cfg, ptr %data, i32 %pin_index, i32 1
  %13 = ptrtoint ptr %a_delay to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %a_delay, align 2
  %arrayidx10 = getelementptr %struct.of_phandle_args, ptr %pinctrl_spec, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %conv12 = trunc i32 %15 to i16
  %g_delay = getelementptr %struct.ti_iodelay_cfg, ptr %data, i32 %pin_index, i32 2
  %16 = ptrtoint ptr %g_delay to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv12, ptr %g_delay, align 2
  %conv16 = and i32 %9, 65535
  %17 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_data, align 4
  %regmap_config.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %regmap_config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap_config.i, align 4
  %max_register.i = getelementptr inbounds %struct.regmap_config, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %max_register.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_register.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv16)
  %cmp.i = icmp ult i32 %22, %conv16
  br i1 %cmp.i, label %ti_iodelay_offset_to_pin.exit.thread, label %ti_iodelay_offset_to_pin.exit

ti_iodelay_offset_to_pin.exit.thread:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.36, i32 noundef %conv16, i32 noundef %22) #9
  br label %do.end23

ti_iodelay_offset_to_pin.exit:                    ; preds = %if.end3
  %reg_start_offset.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %18, i32 0, i32 19
  %25 = ptrtoint ptr %reg_start_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_start_offset.i, align 4
  %sub.i = sub i32 %conv16, %26
  %reg_stride.i = getelementptr inbounds %struct.regmap_config, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_stride.i, align 4
  %div.i = udiv i32 %sub.i, %28
  %reg_nr_per_pin.i = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %18, i32 0, i32 20
  %29 = ptrtoint ptr %reg_nr_per_pin.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_nr_per_pin.i, align 4
  %div4.i = udiv i32 %div.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i)
  %cmp18 = icmp slt i32 %div4.i, 0
  br i1 %cmp18, label %ti_iodelay_offset_to_pin.exit.do.end23_crit_edge, label %if.end28

ti_iodelay_offset_to_pin.exit.do.end23_crit_edge: ; preds = %ti_iodelay_offset_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end23:                                         ; preds = %ti_iodelay_offset_to_pin.exit.do.end23_crit_edge, %ti_iodelay_offset_to_pin.exit.thread
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  %33 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx4, align 2
  %conv27 = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.43, ptr noundef %np, i32 noundef %conv27) #9
  br label %cleanup

if.end28:                                         ; preds = %ti_iodelay_offset_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx29 = getelementptr i32, ptr %pins, i32 %pin_index
  %35 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div4.i, ptr %arrayidx29, align 4
  %pa = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 6
  %36 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pa, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %37, i32 %div4.i, i32 2
  %38 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx4, ptr %drv_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_iodelay_node_iterator.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_iodelay_node_iterator, %cleanup)) #6
          to label %if.then38 [label %cleanup], !srcloc !140

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  %41 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx4, align 2
  %conv42 = zext i16 %42 to i32
  %43 = ptrtoint ptr %a_delay to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %a_delay, align 2
  %conv45 = zext i16 %44 to i32
  %45 = ptrtoint ptr %g_delay to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %g_delay, align 2
  %conv48 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_iodelay_node_iterator.__UNIQUE_ID_ddebug227, ptr noundef %40, ptr noundef nonnull @.str.45, ptr noundef %np, i32 noundef %conv42, i32 noundef %conv45, i32 noundef %conv48) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end28, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %do.end23 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_iodelay_pinconf_group_get(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pctl.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctl.i, align 4
  %call.i = tail call ptr @pinctrl_generic_get_group(ptr noundef %1, i32 noundef %selector) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ti_iodelay_get_pingroup.exit.thread, label %ti_iodelay_get_pingroup.exit

ti_iodelay_get_pingroup.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %selector) #9
  br label %cleanup

ti_iodelay_get_pingroup.exit:                     ; preds = %entry
  %data.i = getelementptr inbounds %struct.group_desc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %ti_iodelay_get_pingroup.exit.cleanup_crit_edge, label %if.end

ti_iodelay_get_pingroup.exit.cleanup_crit_edge:   ; preds = %ti_iodelay_get_pingroup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ti_iodelay_get_pingroup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %config2 = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config2, align 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ti_iodelay_get_pingroup.exit.cleanup_crit_edge, %ti_iodelay_get_pingroup.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %ti_iodelay_get_pingroup.exit.cleanup_crit_edge ], [ -22, %ti_iodelay_get_pingroup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_iodelay_pinconf_group_set(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %pctl.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl.i, align 4
  %call.i = tail call ptr @pinctrl_generic_get_group(ptr noundef %3, i32 noundef %selector) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %selector) #9
  br label %ti_iodelay_get_pingroup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.group_desc, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  br label %ti_iodelay_get_pingroup.exit

ti_iodelay_get_pingroup.exit:                     ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_configs)
  %cmp.not = icmp eq i32 %num_configs, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %ti_iodelay_get_pingroup.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %num_configs) #9
  br label %cleanup

if.end:                                           ; preds = %ti_iodelay_get_pingroup.exit
  %8 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %9)
  %cmp3.not = icmp eq i32 %9, 127
  br i1 %cmp3.not, label %for.cond.preheader, label %do.end7

for.cond.preheader:                               ; preds = %if.end
  %ncfg = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %ncfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ncfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp923 = icmp sgt i32 %11, 0
  br i1 %cmp923, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.51) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %12 = ptrtoint ptr %ncfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ncfg, align 4
  %cmp9 = icmp slt i32 %inc, %13
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %retval.0.i, align 4
  %arrayidx = getelementptr %struct.ti_iodelay_cfg, ptr %15, i32 %i.024
  %call10 = tail call fastcc i32 @ti_iodelay_pinconf_set(ptr noundef %call, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end7, %for.cond.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_iodelay_pinconf_group_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %selector) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pctl.i = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctl.i, align 4
  %call.i = tail call ptr @pinctrl_generic_get_group(ptr noundef %1, i32 noundef %selector) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ti_iodelay_get_pingroup.exit.thread, label %ti_iodelay_get_pingroup.exit

ti_iodelay_get_pingroup.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %selector) #9
  br label %cleanup

ti_iodelay_get_pingroup.exit:                     ; preds = %entry
  %data.i = getelementptr inbounds %struct.group_desc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %ti_iodelay_get_pingroup.exit.cleanup_crit_edge, label %for.cond.preheader

ti_iodelay_get_pingroup.exit.cleanup_crit_edge:   ; preds = %ti_iodelay_get_pingroup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %ti_iodelay_get_pingroup.exit
  %ncfg = getelementptr inbounds %struct.ti_iodelay_pingroup, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ncfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ncfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20 = icmp sgt i32 %7, 0
  br i1 %cmp20, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regmap = getelementptr inbounds %struct.ti_iodelay_device, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reg, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.ti_iodelay_cfg, ptr %10, i32 %i.021
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %14 to i32
  %call3 = call i32 @regmap_read(ptr noundef %12, i32 noundef %conv, ptr noundef nonnull %reg) #6
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %16 to i32
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %a_delay = getelementptr %struct.ti_iodelay_cfg, ptr %10, i32 %i.021, i32 1
  %19 = ptrtoint ptr %a_delay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %a_delay, align 2
  %conv6 = zext i16 %20 to i32
  %g_delay = getelementptr %struct.ti_iodelay_cfg, ptr %10, i32 %i.021, i32 2
  %21 = ptrtoint ptr %g_delay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %g_delay, align 2
  %conv7 = zext i16 %22 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.59, i32 noundef %conv5, i32 noundef %18, i32 noundef %conv6, i32 noundef %conv7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  %inc = add nuw nsw i32 %i.021, 1
  %23 = ptrtoint ptr %ncfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ncfg, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %ti_iodelay_get_pingroup.exit.cleanup_crit_edge, %ti_iodelay_get_pingroup.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_iodelay_pinconf_set(ptr nocapture noundef readonly %iod, ptr nocapture noundef readonly %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 7
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data, align 4
  %2 = ptrtoint ptr %iod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iod, align 4
  %g_delay = getelementptr inbounds %struct.ti_iodelay_cfg, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %g_delay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %g_delay, align 2
  %.frozen = freeze i16 %5
  %div129 = udiv i16 %.frozen, 920
  %div.zext = zext i16 %div129 to i32
  %6 = mul i16 %div129, 920
  %rem130.decomposed = sub i16 %.frozen, %6
  %div4131 = udiv i16 %rem130.decomposed, 6
  %div4.zext = zext i16 %div4131 to i32
  %a_delay = getelementptr inbounds %struct.ti_iodelay_cfg, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %a_delay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %a_delay, align 2
  %conv5 = zext i16 %8 to i32
  %cdpe = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 5
  %9 = ptrtoint ptr %cdpe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cdpe, align 4
  %conv5.frozen = freeze i32 %conv5
  %.frozen132 = freeze i32 %10
  %div6 = udiv i32 %conv5.frozen, %.frozen132
  %11 = mul i32 %div6, %.frozen132
  %rem10.decomposed = sub i32 %conv5.frozen, %11
  %mul11 = mul nuw nsw i32 %rem10.decomposed, 10
  %fdpe = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 8, i32 6
  %12 = ptrtoint ptr %fdpe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fdpe, align 4
  %div12 = udiv i32 %mul11, %13
  %add = add nuw nsw i32 %div6, %div.zext
  %add13 = add nuw nsw i32 %div12, %div4.zext
  %div14 = udiv i32 %add13, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 229, i32 %add13)
  %cmp = icmp ugt i32 %add13, 229
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul17 = mul i32 %add, %10
  %mul19 = mul i32 %div14, %13
  %add20 = add i32 %mul19, %mul17
  %add20.frozen = freeze i32 %add20
  %.frozen133 = freeze i32 %10
  %div22 = udiv i32 %add20.frozen, %.frozen133
  %14 = mul i32 %div22, %.frozen133
  %rem24.decomposed = sub i32 %add20.frozen, %14
  %div26 = udiv i32 %rem24.decomposed, %13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %c_elements.0 = phi i32 [ %div22, %if.then ], [ %add, %entry.if.end_crit_edge ]
  %f_elements.0 = phi i32 [ %div26, %if.then ], [ %div14, %entry.if.end_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %signature_value = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %signature_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %signature_value, align 4
  %19 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #6, !range !143
  %shl = shl i32 %18, %19
  %binary_data_coarse_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %binary_data_coarse_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %binary_data_coarse_mask, align 4
  %or = or i32 %21, %16
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #6, !range !143
  %shl30 = shl i32 %c_elements.0, %22
  %neg = xor i32 %21, -1
  %and = and i32 %shl30, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %do.end

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %shl30) #9
  %23 = ptrtoint ptr %binary_data_coarse_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %binary_data_coarse_mask, align 4
  %and34 = and i32 %24, %shl30
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.end.if.end35_crit_edge
  %tmp_val.0 = phi i32 [ %and34, %do.end ], [ %shl30, %if.end.if.end35_crit_edge ]
  %or36 = or i32 %tmp_val.0, %shl
  %binary_data_fine_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %binary_data_fine_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %binary_data_fine_mask, align 4
  %or37 = or i32 %or, %26
  %27 = tail call i32 @llvm.cttz.i32(i32 %26, i1 false) #6, !range !143
  %shl40 = shl i32 %f_elements.0, %27
  %neg42 = xor i32 %26, -1
  %and43 = and i32 %shl40, %neg42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end35.if.end51_crit_edge, label %do.end48

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end48:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %shl40) #9
  %28 = ptrtoint ptr %binary_data_fine_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %binary_data_fine_mask, align 4
  %and50 = and i32 %29, %shl40
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end35.if.end51_crit_edge
  %tmp_val.1 = phi i32 [ %and50, %do.end48 ], [ %shl40, %if.end35.if.end51_crit_edge ]
  %or52 = or i32 %or36, %tmp_val.1
  %lock_mask = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %lock_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lock_mask, align 4
  %or53 = or i32 %or37, %31
  %unlock_val = getelementptr inbounds %struct.ti_iodelay_reg_data, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %unlock_val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %unlock_val, align 4
  %34 = tail call i32 @llvm.cttz.i32(i32 %31, i1 false) #6, !range !143
  %shl56 = shl i32 %33, %34
  %or57 = or i32 %or52, %shl56
  %regmap = getelementptr inbounds %struct.ti_iodelay_device, ptr %iod, i32 0, i32 3
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cfg, align 2
  %conv58 = zext i16 %38 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %conv58, i32 noundef %or53, i32 noundef %or57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_iodelay_pinconf_set.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_iodelay_pinconf_set, %do.end75)) #6
          to label %if.then66 [label %do.end75], !srcloc !140

if.then66:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cfg, align 2
  %conv68 = zext i16 %40 to i32
  %41 = ptrtoint ptr %a_delay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %a_delay, align 2
  %conv70 = zext i16 %42 to i32
  %43 = ptrtoint ptr %g_delay to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %g_delay, align 2
  %conv72 = zext i16 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_iodelay_pinconf_set.__UNIQUE_ID_ddebug223, ptr noundef %3, ptr noundef nonnull @.str.58, i32 noundef %conv68, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %c_elements.0, i32 noundef %f_elements.0, i32 noundef %or57) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then66, %if.end51
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_pinctrl_ti_iodelay__229_932_ti_iodelay_driver_init6, !1, !"__initcall__kmod_pinctrl_ti_iodelay__229_932_ti_iodelay_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 932, i32 1}
!2 = !{ptr @__exitcall_ti_iodelay_driver_exit, !1, !"__exitcall_ti_iodelay_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 934, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 935, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 936, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 928, i32 14}
!12 = !{ptr @ti_iodelay_driver, !13, !"ti_iodelay_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 924, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 830, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ti_iodelay_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ti_iodelay_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 837, i32 3}
!24 = !{ptr @ti_iodelay_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ti_iodelay_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 852, i32 3}
!28 = !{ptr @ti_iodelay_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ti_iodelay_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ti_iodelay_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 864, i32 16}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 867, i32 3}
!35 = !{ptr @ti_iodelay_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ti_iodelay_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 888, i32 3}
!39 = !{ptr @ti_iodelay_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ti_iodelay_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 300, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug224, !42, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 310, i32 3}
!48 = !{ptr @ti_iodelay_pinconf_init_dev._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ti_iodelay_pinconf_init_dev._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 318, i32 3}
!52 = !{ptr @ti_iodelay_pinconf_init_dev._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ti_iodelay_pinconf_init_dev._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 323, i32 2}
!56 = !{ptr @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug225, !55, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 334, i32 3}
!59 = !{ptr @ti_iodelay_pinconf_init_dev._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ti_iodelay_pinconf_init_dev._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 342, i32 3}
!63 = !{ptr @ti_iodelay_pinconf_init_dev._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ti_iodelay_pinconf_init_dev._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 347, i32 2}
!67 = !{ptr @ti_iodelay_pinconf_init_dev.__UNIQUE_ID_ddebug226, !66, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 751, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ti_iodelay_alloc_pins.__UNIQUE_ID_ddebug228, !69, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 403, i32 3}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ti_iodelay_offset_to_pin._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ti_iodelay_offset_to_pin._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ti_iodelay_pinctrl_ops, !78, !"ti_iodelay_pinctrl_ops", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 716, i32 33}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 676, i32 16}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 491, i32 21}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 442, i32 3}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ti_iodelay_node_iterator._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ti_iodelay_node_iterator._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 455, i32 3}
!90 = !{ptr @ti_iodelay_node_iterator._entry.42, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ti_iodelay_node_iterator._entry_ptr.44, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 464, i32 2}
!94 = !{ptr @ti_iodelay_node_iterator.__UNIQUE_ID_ddebug227, !93, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!95 = !{ptr @ti_iodelay_pinctrl_pinconf_ops, !96, !"ti_iodelay_pinctrl_pinconf_ops", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 726, i32 33}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 382, i32 3}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ti_iodelay_get_pingroup._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ti_iodelay_get_pingroup._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 616, i32 3}
!104 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ti_iodelay_pinconf_group_set._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ti_iodelay_pinconf_group_set._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 622, i32 3}
!109 = !{ptr @ti_iodelay_pinconf_group_set._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ti_iodelay_pinconf_group_set._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 241, i32 3}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ti_iodelay_pinconf_set._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ti_iodelay_pinconf_set._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 250, i32 3}
!118 = !{ptr @ti_iodelay_pinconf_set._entry.55, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ti_iodelay_pinconf_set._entry_ptr.57, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 266, i32 2}
!122 = !{ptr @ti_iodelay_pinconf_set.__UNIQUE_ID_ddebug223, !121, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 710, i32 17}
!125 = !{ptr @ti_iodelay_of_match, !126, !"ti_iodelay_of_match", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 807, i32 34}
!127 = !{ptr @dra7_iodelay_data, !128, !"dra7_iodelay_data", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 777, i32 35}
!129 = !{ptr @dra7_iodelay_regmap_config, !130, !"dra7_iodelay_regmap_config", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/ti/pinctrl-ti-iodelay.c", i32 770, i32 29}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2148186124, i64 2148186129, i64 2148186142, i64 2148186186, i64 2148186220, i64 2148186241}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{!"auto-init"}
!143 = !{i32 0, i32 33}
