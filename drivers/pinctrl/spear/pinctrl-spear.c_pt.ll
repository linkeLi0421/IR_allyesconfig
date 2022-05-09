; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/spear/pinctrl-spear.c_pt.bc'
source_filename = "../drivers/pinctrl/spear/pinctrl-spear.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.spear_gpio_pingroup = type { ptr, i32, ptr, i8 }
%struct.spear_muxreg = type { i16, i32, i32 }
%struct.spear_pinctrl_machdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i8, i16, ptr, i32 }
%struct.spear_pingroup = type { ptr, ptr, i32, ptr, i32 }
%struct.spear_modemux = type { i16, i8, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spear_pmx = type { ptr, ptr, ptr, ptr }
%struct.spear_pmx_mode = type { ptr, i16, i16, i16, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.spear_function = type { ptr, ptr, i32 }

@spear_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Init regmap failed (%pe).\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spear_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/spear/pinctrl-spear.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spear_pinctrl_probe._entry_ptr = internal global ptr @spear_pinctrl_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,pinmux-mode\00", [17 x i8] zeroinitializer }, align 32
@spear_pinctrl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OF: pinmux mode not passed\0A\00", [36 x i8] zeroinitializer }, align 32
@spear_pinctrl_probe._entry_ptr.8 = internal global ptr @spear_pinctrl_probe._entry.6, section ".printk_index", align 4
@spear_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 392, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"OF: Couldn't configure mode: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@spear_pinctrl_probe._entry_ptr.11 = internal global ptr @spear_pinctrl_probe._entry.9, section ".printk_index", align 4
@spear_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.19, ptr null, i32 0, ptr @spear_pinctrl_ops, ptr @spear_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@spear_pinctrl_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 404, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@spear_pinctrl_probe._entry_ptr.14 = internal global ptr @spear_pinctrl_probe._entry.12, section ".printk_index", align 4
@set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 81, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Configured Mode: %s with id: %x\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@set_mode._entry_ptr = internal global ptr @set_mode._entry, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no_name\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spear-pinmux\00", [19 x i8] zeroinitializer }, align 32
@spear_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @spear_pinctrl_get_groups_cnt, ptr @spear_pinctrl_get_group_name, ptr @spear_pinctrl_get_group_pins, ptr @spear_pinctrl_pin_dbg_show, ptr @spear_pinctrl_dt_node_to_map, ptr @spear_pinctrl_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@spear_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @spear_pinctrl_get_funcs_count, ptr @spear_pinctrl_get_func_name, ptr @spear_pinctrl_get_func_groups, ptr @spear_pinctrl_set_mux, ptr @gpio_request_enable, ptr @gpio_disable_free, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" spear-pinmux\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,function\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st,pins\00", [24 x i8] zeroinitializer }, align 32
@spear_pinctrl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No child nodes passed via DT\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"spear_pinctrl_dt_node_to_map\00", [35 x i8] zeroinitializer }, align 32
@spear_pinctrl_dt_node_to_map._entry_ptr = internal global ptr @spear_pinctrl_dt_node_to_map._entry, section ".printk_index", align 4
@spear_pinctrl_endisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 269, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pinmux group: %s not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spear_pinctrl_endisable\00", [40 x i8] zeroinitializer }, align 32
@spear_pinctrl_endisable._entry_ptr = internal global ptr @spear_pinctrl_endisable._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 373, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 385, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 386, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 391, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"spear_pinctrl_desc\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 351, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 404, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 79, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 352, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"spear_pinctrl_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 206, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"spear_pinmux_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 342, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 144, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 160, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 166, i32 39 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 176, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [41 x i8] c"../drivers/pinctrl/spear/pinctrl-spear.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 268, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @set_mode._entry, ptr @set_mode._entry_ptr, ptr @spear_pinctrl_dt_node_to_map._entry, ptr @spear_pinctrl_dt_node_to_map._entry_ptr, ptr @spear_pinctrl_endisable._entry, ptr @spear_pinctrl_endisable._entry_ptr, ptr @spear_pinctrl_probe._entry, ptr @spear_pinctrl_probe._entry.12, ptr @spear_pinctrl_probe._entry.6, ptr @spear_pinctrl_probe._entry.9, ptr @spear_pinctrl_probe._entry_ptr, ptr @spear_pinctrl_probe._entry_ptr.11, ptr @spear_pinctrl_probe._entry_ptr.14, ptr @spear_pinctrl_probe._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @spear_pinctrl_desc, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @spear_pinctrl_ops, ptr @spear_pinmux_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_pinctrl_endisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pmx_init_gpio_pingroup_addr(ptr nocapture noundef readonly %gpio_pingroup, i32 noundef %count, i16 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp20.not = icmp eq i32 %count, 0
  br i1 %cmp20.not, label %entry.for.end10_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.for.end10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.cond1.preheader:                              ; preds = %for.inc8.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %i.021 = phi i32 [ %inc9, %for.inc8.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %nmuxregs = getelementptr %struct.spear_gpio_pingroup, ptr %gpio_pingroup, i32 %i.021, i32 3
  %0 = ptrtoint ptr %nmuxregs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nmuxregs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp218.not = icmp eq i8 %1, 0
  br i1 %cmp218.not, label %for.cond1.preheader.for.inc8_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc8_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc8

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %muxregs = getelementptr %struct.spear_gpio_pingroup, ptr %gpio_pingroup, i32 %i.021, i32 2
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %j.019 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %2 = ptrtoint ptr %muxregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxregs, align 4
  %arrayidx6 = getelementptr %struct.spear_muxreg, ptr %3, i32 %j.019
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %reg, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %j.019, 1
  %5 = ptrtoint ptr %nmuxregs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nmuxregs, align 4
  %conv = zext i8 %6 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc8_crit_edge

for.body4.for.inc8_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc8

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.inc8:                                         ; preds = %for.body4.for.inc8_crit_edge, %for.cond1.preheader.for.inc8_crit_edge
  %inc9 = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc9, %count
  br i1 %exitcond.not, label %for.inc8.for.end10_crit_edge, label %for.inc8.for.cond1.preheader_crit_edge

for.inc8.for.cond1.preheader_crit_edge:           ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.inc8.for.end10_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.end10:                                        ; preds = %for.inc8.for.end10_crit_edge, %entry.for.end10_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pmx_init_addr(ptr nocapture noundef readonly %machdata, i16 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ngroups = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %machdata, i32 0, i32 5
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40.not = icmp eq i32 %1, 0
  br i1 %cmp40.not, label %entry.for.end22_crit_edge, label %for.body.lr.ph

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %groups = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %machdata, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %for.body.lr.ph
  %group.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc20.for.body_crit_edge ]
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %group.041
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %nmodemuxs = getelementptr inbounds %struct.spear_pingroup, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %nmodemuxs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nmodemuxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp237.not = icmp eq i32 %7, 0
  br i1 %cmp237.not, label %for.body.for.inc20_crit_edge, label %for.body3.lr.ph

for.body.for.inc20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20

for.body3.lr.ph:                                  ; preds = %for.body
  %modemuxs = getelementptr inbounds %struct.spear_pingroup, ptr %5, i32 0, i32 3
  br label %for.body3

for.body3:                                        ; preds = %for.inc17.for.body3_crit_edge, %for.body3.lr.ph
  %i.038 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc18, %for.inc17.for.body3_crit_edge ]
  %8 = ptrtoint ptr %modemuxs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %modemuxs, align 4
  %nmuxregs = getelementptr %struct.spear_modemux, ptr %9, i32 %i.038, i32 1
  %10 = ptrtoint ptr %nmuxregs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nmuxregs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp635.not = icmp eq i8 %11, 0
  br i1 %cmp635.not, label %for.body3.for.inc17_crit_edge, label %for.body8.lr.ph

for.body3.for.inc17_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

for.body8.lr.ph:                                  ; preds = %for.body3
  %muxregs = getelementptr %struct.spear_modemux, ptr %9, i32 %i.038, i32 2
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %j.036 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc.for.body8_crit_edge ]
  %12 = ptrtoint ptr %muxregs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %muxregs, align 4
  %arrayidx9 = getelementptr %struct.spear_muxreg, ptr %13, i32 %j.036
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp12 = icmp eq i16 %15, -1
  br i1 %cmp12, label %if.then, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %reg, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body8.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.036, 1
  %17 = ptrtoint ptr %nmuxregs to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nmuxregs, align 2
  %conv = zext i8 %18 to i32
  %cmp6 = icmp ult i32 %inc, %conv
  br i1 %cmp6, label %for.inc.for.body8_crit_edge, label %for.inc.for.inc17_crit_edge

for.inc.for.inc17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.inc17:                                        ; preds = %for.inc.for.inc17_crit_edge, %for.body3.for.inc17_crit_edge
  %inc18 = add nuw i32 %i.038, 1
  %19 = ptrtoint ptr %nmodemuxs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nmodemuxs, align 4
  %cmp2 = icmp ult i32 %inc18, %20
  br i1 %cmp2, label %for.inc17.for.body3_crit_edge, label %for.inc17.for.inc20_crit_edge

for.inc17.for.inc20_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20

for.inc17.for.body3_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.inc20:                                        ; preds = %for.inc17.for.inc20_crit_edge, %for.body.for.inc20_crit_edge
  %inc21 = add nuw i32 %group.041, 1
  %21 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ngroups, align 4
  %cmp = icmp ult i32 %inc21, %22
  br i1 %cmp, label %for.inc20.for.body_crit_edge, label %for.inc20.for.end22_crit_edge

for.inc20.for.end22_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end22:                                        ; preds = %for.inc20.for.end22_crit_edge, %entry.for.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spear_pinctrl_probe(ptr noundef %pdev, ptr noundef %machdata) local_unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %machdata, null
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup48_crit_edge, label %if.end4

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @device_node_to_regmap(ptr noundef %1) #7
  %regmap = getelementptr inbounds %struct.spear_pmx, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %call5) #10
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup48

if.end13:                                         ; preds = %if.end4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %machdata16 = getelementptr inbounds %struct.spear_pmx, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %machdata16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %machdata, ptr %machdata16, align 4
  %modes_supported = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %machdata, i32 0, i32 9
  %8 = ptrtoint ptr %modes_supported to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %modes_supported, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.end13.if.end35_crit_edge, label %if.then18

if.end13.if.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then18:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %mode, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool20.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #7
  br label %cleanup48

if.end26:                                         ; preds = %if.then18
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %13 = ptrtoint ptr %machdata16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %machdata16, align 4
  %pmx_modes.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %pmx_modes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmx_modes.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end26.do.end32_crit_edge, label %lor.lhs.false.i

if.end26.do.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

lor.lhs.false.i:                                  ; preds = %if.end26
  %npmx_modes.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %14, i32 0, i32 12
  %17 = ptrtoint ptr %npmx_modes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %npmx_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.end32_crit_edge, label %for.body.preheader.i

lor.lhs.false.i.do.end32_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.body.preheader.i:                             ; preds = %lor.lhs.false.i
  %shl.i = shl nuw i32 1, %12
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.cond.i.do.end32_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.end32_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.058.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.058.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %mode7.i = getelementptr inbounds %struct.spear_pmx_mode, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %mode7.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mode7.i, align 4
  %conv.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv.i)
  %cmp8.i = icmp eq i32 %shl.i, %conv.i
  br i1 %cmp8.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool15.not.i = icmp eq ptr %20, null
  br i1 %tobool15.not.i, label %for.end.i.do.end32_crit_edge, label %cleanup

for.end.i.do.end32_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end32:                                         ; preds = %for.end.i.do.end32_crit_edge, %for.cond.i.do.end32_crit_edge, %lor.lhs.false.i.do.end32_crit_edge, %if.end26.do.end32_crit_edge
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #7
  br label %cleanup48

cleanup:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode7.i.le = getelementptr inbounds %struct.spear_pmx_mode, ptr %20, i32 0, i32 1
  %reg.i = getelementptr inbounds %struct.spear_pmx_mode, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %reg.i, align 2
  %conv18.i = zext i16 %26 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i.i, align 4, !annotation !63
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i.i76 = call i32 @regmap_read(ptr noundef %29, i32 noundef %conv18.i, ptr noundef nonnull %val.i.i) #7
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %mask.i = getelementptr inbounds %struct.spear_pmx_mode, ptr %20, i32 0, i32 3
  %32 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mask.i, align 4
  %conv19.i = zext i16 %33 to i32
  %neg.i = xor i32 %conv19.i, -1
  %and.i = and i32 %31, %neg.i
  %val20.i = getelementptr inbounds %struct.spear_pmx_mode, ptr %20, i32 0, i32 4
  %34 = ptrtoint ptr %val20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val20.i, align 4
  %or.i = or i32 %and.i, %35
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg.i, align 2
  %conv22.i = zext i16 %37 to i32
  %call.i54.i = call i32 @regmap_write(ptr noundef %29, i32 noundef %conv22.i, i32 noundef %or.i) #7
  %38 = ptrtoint ptr %mode7.i.le to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mode7.i.le, align 4
  %40 = ptrtoint ptr %machdata16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %machdata16, align 4
  %mode25.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %mode25.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %39, ptr %mode25.i, align 2
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %45 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %20, align 4
  %tobool26.not.i = icmp eq ptr %46, null
  %spec.select.i = select i1 %tobool26.not.i, ptr @.str.18, ptr %46
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %reg.i, align 2
  %conv29.i = zext i16 %48 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef nonnull %spec.select.i, i32 noundef %conv29.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #7
  br label %if.end35

if.end35:                                         ; preds = %cleanup, %if.end13.if.end35_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %machdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %machdata, align 4
  store ptr %51, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @spear_pinctrl_desc, i32 0, i32 1), align 4
  %npins = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %machdata, i32 0, i32 1
  %52 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %npins, align 4
  store i32 %53, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @spear_pinctrl_desc, i32 0, i32 2), align 4
  %call37 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @spear_pinctrl_desc, ptr noundef nonnull %call.i) #7
  %pctl = getelementptr inbounds %struct.spear_pmx, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call37, ptr %pctl, align 4
  %cmp.i77 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %do.end43, label %if.end35.cleanup48_crit_edge

if.end35.cleanup48_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  %55 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pctl, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %cleanup48

cleanup48:                                        ; preds = %do.end43, %if.end35.cleanup48_crit_edge, %do.end32, %do.end24, %do.end, %if.end.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.1 = phi i32 [ %5, %do.end ], [ %57, %do.end43 ], [ -19, %entry.cleanup48_crit_edge ], [ -12, %if.end.cleanup48_crit_edge ], [ -22, %do.end32 ], [ -22, %do.end24 ], [ 0, %if.end35.cleanup48_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_groups_cnt(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %machdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata, align 4
  %ngroups = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @spear_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %machdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata, align 4
  %groups = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %machdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata, align 4
  %groups = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %pins1 = getelementptr inbounds %struct.spear_pingroup, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins1, align 4
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pins, align 4
  %9 = load ptr, ptr %machdata, align 4
  %groups3 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %groups3, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 %group
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %npins = getelementptr inbounds %struct.spear_pingroup, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npins, align 4
  %16 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spear_pinctrl_pin_dbg_show(ptr nocapture noundef readnone %pctldev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #2 align 64 {
entry:
  %function = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function) #7
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %function, align 4, !annotation !63
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #7
  %cmp.not82 = icmp eq ptr %call1, null
  br i1 %cmp.not82, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry.for.body_crit_edge
  %count.084 = phi i32 [ %add, %if.end7.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %np.083 = phi ptr [ %call8, %if.end7.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %call2 = call i32 @of_property_read_string(ptr noundef nonnull %np.083, ptr noundef nonnull @.str.21, ptr noundef nonnull %function) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %np.083) #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %np.083, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %np.083) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add = add i32 %call.i, %count.084
  %call8 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.083) #7
  %cmp.not = icmp eq ptr %call8, null
  br i1 %cmp.not, label %for.end, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end10

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 28) #7
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !64

kcalloc.exit.thread:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %map, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end10
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #11
  %7 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %map, align 4
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end14

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7.i.i
  %call15 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #7
  %cmp17.not89 = icmp eq ptr %call15, null
  br i1 %cmp17.not89, label %if.end14.for.end35_crit_edge, label %if.end14.for.body18_crit_edge

if.end14.for.body18_crit_edge:                    ; preds = %if.end14
  br label %for.body18

if.end14.for.end35_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35

for.body18:                                       ; preds = %for.inc33.for.body18_crit_edge, %if.end14.for.body18_crit_edge
  %index.091 = phi i32 [ %index.1.lcssa, %for.inc33.for.body18_crit_edge ], [ 0, %if.end14.for.body18_crit_edge ]
  %np.190 = phi ptr [ %call34, %for.inc33.for.body18_crit_edge ], [ %call15, %if.end14.for.body18_crit_edge ]
  %call19 = call i32 @of_property_read_string(ptr noundef nonnull %np.190, ptr noundef nonnull @.str.21, ptr noundef nonnull %function) #7
  %call20 = call ptr @of_find_property(ptr noundef nonnull %np.190, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %call21 = call ptr @of_prop_next_string(ptr noundef %call20, ptr noundef null) #7
  %tobool23.not85 = icmp eq ptr %call21, null
  br i1 %tobool23.not85, label %for.body18.for.inc33_crit_edge, label %for.body18.for.body24_crit_edge

for.body18.for.body24_crit_edge:                  ; preds = %for.body18
  br label %for.body24

for.body18.for.inc33_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body18.for.body24_crit_edge
  %index.187 = phi i32 [ %inc, %for.body24.for.body24_crit_edge ], [ %index.091, %for.body18.for.body24_crit_edge ]
  %group.086 = phi ptr [ %call31, %for.body24.for.body24_crit_edge ], [ %call21, %for.body18.for.body24_crit_edge ]
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %type = getelementptr %struct.pinctrl_map, ptr %9, i32 %index.187, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type, align 4
  %11 = load ptr, ptr %map, align 4
  %data = getelementptr %struct.pinctrl_map, ptr %11, i32 %index.187, i32 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %group.086, ptr %data, align 4
  %13 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %function, align 4
  %15 = load ptr, ptr %map, align 4
  %function29 = getelementptr %struct.pinctrl_map, ptr %15, i32 %index.187, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %function29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %function29, align 4
  %inc = add i32 %index.187, 1
  %call31 = call ptr @of_prop_next_string(ptr noundef %call20, ptr noundef nonnull %group.086) #7
  %tobool23.not = icmp eq ptr %call31, null
  br i1 %tobool23.not, label %for.body24.for.inc33_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.body24.for.inc33_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33

for.inc33:                                        ; preds = %for.body24.for.inc33_crit_edge, %for.body18.for.inc33_crit_edge
  %index.1.lcssa = phi i32 [ %index.091, %for.body18.for.inc33_crit_edge ], [ %inc, %for.body24.for.inc33_crit_edge ]
  %call34 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.190) #7
  %cmp17.not = icmp eq ptr %call34, null
  br i1 %cmp17.not, label %for.inc33.for.end35_crit_edge, label %for.inc33.for.body18_crit_edge

for.inc33.for.body18_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %if.end14.for.end35_crit_edge
  %17 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %num_maps, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end35, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end, %if.then6, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call.i, %if.then6 ], [ 0, %for.end35 ], [ -19, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spear_pinctrl_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %machdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata, align 4
  %nfunctions = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @spear_pinctrl_get_func_name(ptr noundef %pctldev, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %machdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata, align 4
  %functions = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %ngroups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %machdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata, align 4
  %functions = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %groups1 = getelementptr inbounds %struct.spear_function, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups1, align 4
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %groups, align 4
  %9 = load ptr, ptr %machdata, align 4
  %functions3 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functions3, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 %function
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %ngroups5 = getelementptr inbounds %struct.spear_function, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ngroups5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ngroups5, align 4
  %16 = ptrtoint ptr %ngroups to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ngroups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata.i = getelementptr inbounds %struct.spear_pmx, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %machdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata.i, align 4
  %groups.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %nmodemuxs.i = getelementptr inbounds %struct.spear_pingroup, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %nmodemuxs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nmodemuxs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not.i = icmp eq i32 %7, 0
  br i1 %cmp3.not.i, label %entry.do.end.i_crit_edge, label %for.body.lr.ph.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %modemuxs.i = getelementptr inbounds %struct.spear_pingroup, ptr %5, i32 0, i32 3
  %regmap.i.i.i = getelementptr inbounds %struct.spear_pmx, ptr %call.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %found.0.off06.i = phi i1 [ false, %for.body.lr.ph.i ], [ %found.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %modemuxs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %modemuxs.i, align 4
  %10 = ptrtoint ptr %machdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %machdata.i, align 4
  %modes_supported.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %modes_supported.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %modes_supported.i, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %for.body.i.if.end7.i_crit_edge, label %if.then.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx1.i = getelementptr %struct.spear_modemux, ptr %9, i32 %i.04.i
  %mode.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %11, i32 0, i32 10
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mode.i, align 2
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx1.i, align 4
  %and2.i = and i16 %17, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and2.i)
  %tobool5.not.i = icmp eq i16 %and2.i, 0
  br i1 %tobool5.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %for.body.i.if.end7.i_crit_edge
  %muxregs.i = getelementptr %struct.spear_modemux, ptr %9, i32 %i.04.i, i32 2
  %18 = ptrtoint ptr %muxregs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %muxregs.i, align 4
  %nmuxregs.i = getelementptr %struct.spear_modemux, ptr %9, i32 %i.04.i, i32 1
  %20 = ptrtoint ptr %nmuxregs.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nmuxregs.i, align 2
  %conv.i.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp22.not.i.i = icmp eq i8 %21, 0
  br i1 %cmp22.not.i.i, label %if.end7.i.for.inc.i_crit_edge, label %if.end7.i.for.body.i.i_crit_edge

if.end7.i.for.body.i.i_crit_edge:                 ; preds = %if.end7.i
  br label %for.body.i.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end7.i.for.body.i.i_crit_edge
  %j.023.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end7.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.spear_muxreg, ptr %19, i32 %j.023.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 4
  %conv2.i.i = zext i16 %23 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %24 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !63
  %25 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %conv2.i.i, ptr noundef nonnull %val.i.i.i) #7
  %27 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %mask.i.i = getelementptr %struct.spear_muxreg, ptr %19, i32 %j.023.i.i, i32 1
  %29 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask.i.i, align 4
  %neg.i.i = xor i32 %30, -1
  %and.i.i = and i32 %28, %neg.i.i
  %val3.i.i = getelementptr %struct.spear_muxreg, ptr %19, i32 %j.023.i.i, i32 2
  %31 = ptrtoint ptr %val3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val3.i.i, align 4
  %and7.i.i = and i32 %32, %30
  %or.i.i = or i32 %and7.i.i, %and.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i.i, align 4
  %conv9.i.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i21.i.i = call i32 @regmap_write(ptr noundef %36, i32 noundef %conv9.i.i, i32 noundef %or.i.i) #7
  %inc.i.i = add nuw nsw i32 %j.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %found.1.off0.i = phi i1 [ %found.0.off06.i, %if.then.i.for.inc.i_crit_edge ], [ true, %if.end7.i.for.inc.i_crit_edge ], [ true, %for.body.i.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.04.i, 1
  %37 = ptrtoint ptr %nmodemuxs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nmodemuxs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %found.1.off0.i, label %for.end.i.spear_pinctrl_endisable.exit_crit_edge, label %for.end.i.do.end.i_crit_edge

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.end.i.spear_pinctrl_endisable.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spear_pinctrl_endisable.exit

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.25, ptr noundef %42) #10
  br label %spear_pinctrl_endisable.exit

spear_pinctrl_endisable.exit:                     ; preds = %do.end.i, %for.end.i.spear_pinctrl_endisable.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %do.end.i ], [ 0, %for.end.i.spear_pinctrl_endisable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @gpio_request_endisable(ptr noundef %pctldev, i32 noundef %offset, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @gpio_request_endisable(ptr noundef %pctldev, i32 noundef %offset, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_request_endisable(ptr noundef %pctldev, i32 noundef %offset, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %machdata1 = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %machdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %machdata1, align 4
  %gpio_pingroups.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %gpio_pingroups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_pingroups.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %ngpio_pingroups.i = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ngpio_pingroups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ngpio_pingroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not.i = icmp eq i32 %5, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.spear_gpio_pingroup, ptr %3, i32 %i.028.i
  %npins.i = getelementptr %struct.spear_gpio_pingroup, ptr %3, i32 %i.028.i, i32 1
  %6 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp525.not.i = icmp eq i32 %7, 0
  br i1 %cmp525.not.i, label %for.body.i.for.inc11.i_crit_edge, label %for.body6.lr.ph.i

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body6.lr.ph.i:                                ; preds = %for.body.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  br label %for.body6.i

for.cond4.i:                                      ; preds = %for.body6.i
  %inc.i = add nuw i32 %j.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond4.i.for.inc11.i_crit_edge, label %for.cond4.i.for.body6.i_crit_edge

for.cond4.i.for.body6.i_crit_edge:                ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

for.cond4.i.for.inc11.i_crit_edge:                ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body6.i:                                      ; preds = %for.cond4.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.026.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i, %for.cond4.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr i32, ptr %9, i32 %j.026.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %offset)
  %cmp8.i = icmp eq i32 %11, %offset
  br i1 %cmp8.i, label %get_gpio_pingroup.exit, label %for.cond4.i

for.inc11.i:                                      ; preds = %for.cond4.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %i.028.i, 1
  %exitcond31.not.i = icmp eq i32 %inc12.i, %5
  br i1 %exitcond31.not.i, label %for.inc11.i.if.end_crit_edge, label %for.inc11.i.for.body.i_crit_edge

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc11.i.if.end_crit_edge:                     ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

get_gpio_pingroup.exit:                           ; preds = %for.body6.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_gpio_pingroup.exit.if.end_crit_edge, label %if.then

get_gpio_pingroup.exit.if.end_crit_edge:          ; preds = %get_gpio_pingroup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %get_gpio_pingroup.exit
  %muxregs = getelementptr %struct.spear_gpio_pingroup, ptr %3, i32 %i.028.i, i32 2
  %12 = ptrtoint ptr %muxregs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %muxregs, align 4
  %nmuxregs = getelementptr %struct.spear_gpio_pingroup, ptr %3, i32 %i.028.i, i32 3
  %14 = ptrtoint ptr %nmuxregs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nmuxregs, align 4
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp22.not.i = icmp eq i8 %15, 0
  br i1 %cmp22.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %regmap.i.i = getelementptr inbounds %struct.spear_pmx, ptr %call, i32 0, i32 3
  %not.enable.i = xor i1 %enable, true
  %neg5.i = sext i1 %not.enable.i to i32
  br label %for.body.i4

for.body.i4:                                      ; preds = %for.body.i4.for.body.i4_crit_edge, %for.body.lr.ph.i
  %j.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i2, %for.body.i4.for.body.i4_crit_edge ]
  %arrayidx.i1 = getelementptr %struct.spear_muxreg, ptr %13, i32 %j.023.i
  %16 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i1, align 4
  %conv2.i = zext i16 %17 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i.i, align 4, !annotation !63
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %conv2.i, ptr noundef nonnull %val.i.i) #7
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %mask.i = getelementptr %struct.spear_muxreg, ptr %13, i32 %j.023.i, i32 1
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %24, -1
  %and.i = and i32 %22, %neg.i
  %val3.i = getelementptr %struct.spear_muxreg, ptr %13, i32 %j.023.i, i32 2
  %25 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val3.i, align 4
  %temp.0.i = xor i32 %26, %neg5.i
  %and7.i = and i32 %temp.0.i, %24
  %or.i = or i32 %and7.i, %and.i
  %27 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i1, align 4
  %conv9.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i.i, align 4
  %call.i21.i = call i32 @regmap_write(ptr noundef %30, i32 noundef %conv9.i, i32 noundef %or.i) #7
  %inc.i2 = add nuw nsw i32 %j.023.i, 1
  %exitcond.not.i3 = icmp eq i32 %inc.i2, %conv.i
  br i1 %exitcond.not.i3, label %for.body.i4.if.end_crit_edge, label %for.body.i4.for.body.i4_crit_edge

for.body.i4.for.body.i4_crit_edge:                ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i4

for.body.i4.if.end_crit_edge:                     ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.body.i4.if.end_crit_edge, %if.then.if.end_crit_edge, %get_gpio_pingroup.exit.if.end_crit_edge, %for.inc11.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %entry.if.end_crit_edge
  %gpio_request_endisable = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %gpio_request_endisable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpio_request_endisable, align 4
  %tobool4.not = icmp eq ptr %32, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void %32(ptr noundef %call, i32 noundef %offset, i1 noundef zeroext %enable) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret void
}

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 373, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @spear_pinctrl_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @spear_pinctrl_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 385, i32 32}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 386, i32 4}
!12 = !{ptr @spear_pinctrl_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @spear_pinctrl_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 391, i32 4}
!16 = !{ptr @spear_pinctrl_probe._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @spear_pinctrl_probe._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 404, i32 3}
!20 = !{ptr @spear_pinctrl_probe._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @spear_pinctrl_probe._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 79, i32 2}
!24 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @set_mode._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @set_mode._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 352, i32 10}
!31 = !{ptr @spear_pinctrl_desc, !32, !"spear_pinctrl_desc", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 351, i32 28}
!33 = !{ptr @spear_pinctrl_ops, !34, !"spear_pinctrl_ops", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 206, i32 33}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 144, i32 16}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 160, i32 37}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 166, i32 39}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 176, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @spear_pinctrl_dt_node_to_map._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @spear_pinctrl_dt_node_to_map._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @spear_pinmux_ops, !47, !"spear_pinmux_ops", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 342, i32 32}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/spear/pinctrl-spear.c", i32 268, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @spear_pinctrl_endisable._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @spear_pinctrl_endisable._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
!63 = !{!"auto-init"}
!64 = !{!"branch_weights", i32 1, i32 2000}
