; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pxa/pinctrl-pxa2xx.c_pt.bc'
source_filename = "../drivers/pinctrl/pxa/pinctrl-pxa2xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pxa2xx_pinctrl_init\22, \22a\22\09"
module asm "\09.weak\09__crc_pxa2xx_pinctrl_init\09\09\09\09"
module asm "\09.long\09__crc_pxa2xx_pinctrl_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa2xx_pinctrl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa2xx_pinctrl_init\22\09\09\09\09\09"
module asm "__kstrtabns_pxa2xx_pinctrl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pxa_desc_pin = type { %struct.pinctrl_pin_desc, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
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
%struct.pxa_pinctrl = type { %struct.spinlock, ptr, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.pxa_pinctrl_group = type { ptr, i32 }
%struct.pxa_pinctrl_function = type { ptr, ptr, i32 }
%struct.pxa_desc_function = type { ptr, i8 }

@pxa2xx_pinctrl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pctl->lock\00", [20 x i8] zeroinitializer }, align 32
@pxa2xx_pinctrl_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @pxa2xx_pctl_ops, ptr @pxa2xx_pinmux_ops, ptr @pxa2xx_pconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pxa2xx_pinctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pxa2xx_pinctrl_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pinctrl/pxa/pinctrl-pxa2xx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa2xx_pinctrl_init._entry_ptr = internal global ptr @pxa2xx_pinctrl_init._entry, section ".printk_index", align 4
@pxa2xx_pinctrl_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"initialized pxa2xx pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pxa2xx_pinctrl_init._entry_ptr.9 = internal global ptr @pxa2xx_pinctrl_init._entry.6, section ".printk_index", align 4
@__kstrtab_pxa2xx_pinctrl_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa2xx_pinctrl_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa2xx_pinctrl_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa2xx_pinctrl_init to i32), ptr @__kstrtab_pxa2xx_pinctrl_init, ptr @__kstrtabns_pxa2xx_pinctrl_init }, section "___ksymtab_gpl+pxa2xx_pinctrl_init", align 4
@__UNIQUE_ID_author229 = internal constant [62 x i8] c"pinctrl_pxa2xx.author=Robert Jarzmik <robert.jarzmik@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [57 x i8] c"pinctrl_pxa2xx.description=Marvell PXA2xx pinctrl driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [55 x i8] c"pinctrl_pxa2xx.file=drivers/pinctrl/pxa/pinctrl-pxa2xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [30 x i8] c"pinctrl_pxa2xx.license=GPL v2\00", section ".modinfo", align 1
@pxa2xx_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pxa2xx_pctrl_get_groups_count, ptr @pxa2xx_pctrl_get_group_name, ptr @pxa2xx_pctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@pxa2xx_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pxa2xx_get_functions_count, ptr @pxa2xx_pmx_get_func_name, ptr @pxa2xx_pmx_get_func_groups, ptr @pxa2xx_pmx_set_mux, ptr null, ptr null, ptr @pxa2xx_pmx_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pxa2xx_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pxa2xx_pconf_group_get, ptr @pxa2xx_pconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pxa2xx_pmx_set_mux.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_pxa2xx\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pxa2xx_pmx_set_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_mux(pin=%d): af=%d dir=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@pxa2xx_pmx_gpio_set_direction.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pxa2xx_pmx_gpio_set_direction\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_direction(pin=%d): dir=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@pxa2xx_pconf_group_get.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pxa2xx_pconf_group_get\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"get sleep gpio state(pin=%d) %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pxa2xx_pconf_group_set.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pxa2xx_pconf_group_set\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"set sleep gpio state(pin=%d) %d\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 398, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"pxa2xx_pinctrl_desc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 246, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 418, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 422, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"pxa2xx_pctl_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 54, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"pxa2xx_pinmux_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 176, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"pxa2xx_pconf_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 240, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 159, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 94, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 200, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [40 x i8] c"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 228, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_pxa2xx_pinctrl_init, ptr @pxa2xx_pinctrl_init._entry, ptr @pxa2xx_pinctrl_init._entry.6, ptr @pxa2xx_pinctrl_init._entry_ptr, ptr @pxa2xx_pinctrl_init._entry_ptr.9, ptr @pxa2xx_pinctrl_init.__key, ptr @.str, ptr @pxa2xx_pinctrl_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @pxa2xx_pctl_ops, ptr @pxa2xx_pinmux_ops, ptr @pxa2xx_pconf_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_pinctrl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_pinctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_pinctrl_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_pinctrl_init(ptr noundef %pdev, ptr noundef %ppins, i32 noundef %npins, ptr nocapture noundef readonly %base_gafr, ptr nocapture noundef readonly %base_gpdr, ptr nocapture noundef readonly %base_pgsr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npins)
  %cmp187 = icmp sgt i32 %npins, 0
  br i1 %cmp187, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0189 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %maxpin.0188 = phi i32 [ %2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pxa_desc_pin, ptr %ppins, i32 %i.0189
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 %maxpin.0188)
  %inc = add nuw nsw i32 %i.0189, 1
  %exitcond.not = icmp eq i32 %inc, %npins
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %maxpin.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %2, %for.body.for.end_crit_edge ]
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.end
  %add = add i32 %maxpin.0.lcssa, 15
  %div = sdiv i32 %add, 16
  %mul = shl nsw i32 %div, 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !59

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %5, i32 noundef 3520) #6
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %if.end.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.end.devm_kcalloc.exit_crit_edge ]
  %base_gafr5 = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base_gafr5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i.i, ptr %base_gafr5, align 4
  %add10 = add i32 %maxpin.0.lcssa, 31
  %div11 = sdiv i32 %add10, 32
  %mul12 = shl nsw i32 %div11, 5
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul12, i32 4) #6
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit168.thread, label %if.end.i.i170, !prof !59

devm_kcalloc.exit168.thread:                      ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %base_gpdr14178 = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %base_gpdr14178 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %base_gpdr14178, align 4
  br label %devm_kcalloc.exit172

if.end.i.i170:                                    ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i165 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #6
  %base_gpdr14 = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %base_gpdr14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i165, ptr %base_gpdr14, align 4
  %call5.i.i169 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #6
  br label %devm_kcalloc.exit172

devm_kcalloc.exit172:                             ; preds = %if.end.i.i170, %devm_kcalloc.exit168.thread
  %base_gpdr14179 = phi ptr [ %base_gpdr14, %if.end.i.i170 ], [ %base_gpdr14178, %devm_kcalloc.exit168.thread ]
  %retval.0.i.i171 = phi ptr [ %call5.i.i169, %if.end.i.i170 ], [ null, %devm_kcalloc.exit168.thread ]
  %base_pgsr23 = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %base_pgsr23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i.i171, ptr %base_pgsr23, align 4
  %13 = ptrtoint ptr %base_gafr5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_gafr5, align 4
  %tobool25.not = icmp eq ptr %14, null
  br i1 %tobool25.not, label %devm_kcalloc.exit172.cleanup_crit_edge, label %lor.lhs.false

devm_kcalloc.exit172.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit172
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %devm_kcalloc.exit172
  %15 = ptrtoint ptr %base_gpdr14179 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_gpdr14179, align 4
  %tobool27.not = icmp eq ptr %16, null
  %tobool30.not = icmp eq ptr %retval.0.i.i171, null
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end32

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @pxa2xx_pinctrl_init.__key, i16 noundef signext 3) #6
  %dev35 = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev35, align 4
  %desc = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 5
  %19 = call ptr @memcpy(ptr %desc, ptr @pxa2xx_pinctrl_desc, i32 44)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end32.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end32.dev_name.exit_crit_edge ]
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %desc, align 4
  %owner = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp47190 = icmp sgt i32 %add, 15
  br i1 %cmp47190, label %dev_name.exit.for.body48_crit_edge, label %dev_name.exit.for.cond57.preheader_crit_edge

dev_name.exit.for.cond57.preheader_crit_edge:     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond57.preheader

dev_name.exit.for.body48_crit_edge:               ; preds = %dev_name.exit
  br label %for.body48

for.cond57.preheader:                             ; preds = %for.body48.for.cond57.preheader_crit_edge, %dev_name.exit.for.cond57.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add10)
  %cmp64192 = icmp sgt i32 %add10, 31
  br i1 %cmp64192, label %for.cond57.preheader.for.body65_crit_edge, label %for.cond57.preheader.for.end78_crit_edge

for.cond57.preheader.for.end78_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end78

for.cond57.preheader.for.body65_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body65

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %dev_name.exit.for.body48_crit_edge
  %i.1191 = phi i32 [ %add55, %for.body48.for.body48_crit_edge ], [ 0, %dev_name.exit.for.body48_crit_edge ]
  %div49.udiv201 = lshr exact i32 %i.1191, 4
  %arrayidx50 = getelementptr ptr, ptr %base_gafr, i32 %div49.udiv201
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx50, align 4
  %28 = ptrtoint ptr %base_gafr5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_gafr5, align 4
  %arrayidx53 = getelementptr ptr, ptr %29, i32 %div49.udiv201
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %arrayidx53, align 4
  %add55 = add nuw nsw i32 %i.1191, 16
  %cmp47 = icmp slt i32 %add55, %mul
  br i1 %cmp47, label %for.body48.for.body48_crit_edge, label %for.body48.for.cond57.preheader_crit_edge

for.body48.for.cond57.preheader_crit_edge:        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond57.preheader

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.cond57.preheader.for.body65_crit_edge
  %i.2193 = phi i32 [ %add77, %for.body65.for.body65_crit_edge ], [ 0, %for.cond57.preheader.for.body65_crit_edge ]
  %div66.udiv200 = lshr exact i32 %i.2193, 5
  %arrayidx67 = getelementptr ptr, ptr %base_gpdr, i32 %div66.udiv200
  %31 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx67, align 4
  %33 = ptrtoint ptr %base_gpdr14179 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_gpdr14179, align 4
  %arrayidx70 = getelementptr ptr, ptr %34, i32 %div66.udiv200
  %35 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %arrayidx70, align 4
  %arrayidx72 = getelementptr ptr, ptr %base_pgsr, i32 %div66.udiv200
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx72, align 4
  %38 = ptrtoint ptr %base_pgsr23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_pgsr23, align 4
  %arrayidx75 = getelementptr ptr, ptr %39, i32 %div66.udiv200
  %40 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %arrayidx75, align 4
  %add77 = add nuw nsw i32 %i.2193, 32
  %cmp64 = icmp slt i32 %add77, %mul12
  br i1 %cmp64, label %for.body65.for.body65_crit_edge, label %for.body65.for.end78_crit_edge

for.body65.for.end78_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end78

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body65

for.end78:                                        ; preds = %for.body65.for.end78_crit_edge, %for.cond57.preheader.for.end78_crit_edge
  %npins1.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %npins1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %npins, ptr %npins1.i, align 4
  %ppins2.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %ppins2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ppins, ptr %ppins2.i, align 4
  %ngroups.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %npins, ptr %ngroups.i, align 4
  %npins3.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %npins3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %npins, ptr %npins3.i, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %npins, i32 12) #6
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %for.end78.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !59

for.end78.cleanup_crit_edge:                      ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %for.end78
  %47 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev35, align 4
  %49 = extractvalue { i32, i1 } %45, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef %49, i32 noundef 3520) #6
  %tobool.not.i173 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i173, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end.i174

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i174:                                      ; preds = %devm_kcalloc.exit.i
  %pins5.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %pins5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i.i.i, ptr %pins5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npins)
  %cmp98.not.i = icmp eq i32 %npins, 0
  br i1 %cmp98.not.i, label %if.end.i174.for.end.i_crit_edge, label %if.end.i174.for.body.i_crit_edge

if.end.i174.for.body.i_crit_edge:                 ; preds = %if.end.i174
  br label %for.body.i

if.end.i174.for.end.i_crit_edge:                  ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i174.for.body.i_crit_edge
  %i.099.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i174.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i, i32 %i.099.i
  %arrayidx6.i = getelementptr %struct.pxa_desc_pin, ptr %ppins, i32 %i.099.i
  %51 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx6.i, i32 12)
  %inc.i = add nuw nsw i32 %i.099.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %npins
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i174.for.end.i_crit_edge
  %52 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ngroups.i, align 4
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 8) #6
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %devm_kmalloc_array.exit.thread.i, label %devm_kmalloc_array.exit.i, !prof !59

devm_kmalloc_array.exit.thread.i:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %groups89.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 10
  %56 = ptrtoint ptr %groups89.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %groups89.i, align 4
  br label %cleanup

devm_kmalloc_array.exit.i:                        ; preds = %for.end.i
  %57 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev35, align 4
  %59 = extractvalue { i32, i1 } %54, 0
  %call5.i.i175 = tail call noalias ptr @devm_kmalloc(ptr noundef %58, i32 noundef %59, i32 noundef 3264) #6
  %groups.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 10
  %60 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i.i175, ptr %groups.i, align 4
  %tobool11.not.i = icmp eq ptr %call5.i.i175, null
  br i1 %tobool11.not.i, label %devm_kmalloc_array.exit.i.cleanup_crit_edge, label %for.cond14.preheader.i

devm_kmalloc_array.exit.i.cleanup_crit_edge:      ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond14.preheader.i:                           ; preds = %devm_kmalloc_array.exit.i
  br i1 %cmp98.not.i, label %for.cond14.preheader.i.for.end26.i_crit_edge, label %for.cond14.preheader.i.for.body16.i_crit_edge

for.cond14.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond14.preheader.i
  br label %for.body16.i

for.cond14.preheader.i.for.end26.i_crit_edge:     ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond14.preheader.i.for.body16.i_crit_edge
  %i.1101.i = phi i32 [ %inc25.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond14.preheader.i.for.body16.i_crit_edge ]
  %61 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %groups.i, align 4
  %add.ptr.i = getelementptr %struct.pxa_pinctrl_group, ptr %62, i32 %i.1101.i
  %arrayidx18.i = getelementptr %struct.pxa_desc_pin, ptr %ppins, i32 %i.1101.i
  %name.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %arrayidx18.i, i32 0, i32 1
  %63 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name.i, align 4
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %add.ptr.i, align 4
  %66 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx18.i, align 4
  %pin23.i = getelementptr %struct.pxa_pinctrl_group, ptr %62, i32 %i.1101.i, i32 1
  %68 = ptrtoint ptr %pin23.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %pin23.i, align 4
  %inc25.i = add nuw nsw i32 %i.1101.i, 1
  %exitcond107.not.i = icmp eq i32 %inc25.i, %npins
  br i1 %exitcond107.not.i, label %for.body16.i.for.end26.i_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16.i

for.body16.i.for.end26.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26.i

for.end26.i:                                      ; preds = %for.body16.i.for.end26.i_crit_edge, %for.cond14.preheader.i.for.end26.i_crit_edge
  %69 = ptrtoint ptr %npins1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %npins1.i, align 4
  %mul.i.i = mul i32 %70, 6
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i.i, i32 12) #6
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %for.end26.i.cleanup_crit_edge, label %devm_kcalloc.exit.i.i, !prof !59

for.end26.i.cleanup_crit_edge:                    ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit.i.i:                            ; preds = %for.end26.i
  %73 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev35, align 4
  %75 = extractvalue { i32, i1 } %71, 0
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %74, i32 noundef %75, i32 noundef 3520) #6
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %devm_kcalloc.exit.i.i.cleanup_crit_edge, label %for.cond.preheader.i.i

devm_kcalloc.exit.i.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %devm_kcalloc.exit.i.i
  %76 = ptrtoint ptr %npins1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %npins1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp54.not.i.i = icmp eq i32 %77, 0
  br i1 %cmp54.not.i.i, label %for.cond.preheader.i.i.for.end15.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end15.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %78 = ptrtoint ptr %ppins2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ppins2.i, align 4
  %nfuncs.i.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc13.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.055.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc14.i.i, %for.inc13.i.i.for.body.i.i_crit_edge ]
  %functions2.i.i = getelementptr %struct.pxa_desc_pin, ptr %79, i32 %i.055.i.i, i32 1
  %80 = ptrtoint ptr %functions2.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %functions2.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %tobool4.not52.i.i = icmp eq ptr %83, null
  br i1 %tobool4.not52.i.i, label %for.body.i.i.for.inc13.i.i_crit_edge, label %for.body.i.i.for.body5.i.i_crit_edge

for.body.i.i.for.body5.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body5.i.i

for.body.i.i.for.inc13.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc13.i.i

for.body5.i.i:                                    ; preds = %for.inc.i.i.for.body5.i.i_crit_edge, %for.body.i.i.for.body5.i.i_crit_edge
  %84 = phi ptr [ %94, %for.inc.i.i.for.body5.i.i_crit_edge ], [ %83, %for.body.i.i.for.body5.i.i_crit_edge ]
  %df.053.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body5.i.i_crit_edge ], [ %81, %for.body.i.i.for.body5.i.i_crit_edge ]
  %85 = ptrtoint ptr %call5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call5.i.i.i.i, align 4
  %tobool.not1.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not1.i.i.i, label %for.body5.i.i.if.then9.i.i_crit_edge, label %for.body5.i.i.for.body.i.i.i_crit_edge

for.body5.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.body5.i.i
  br label %for.body.i.i.i

for.body5.i.i.if.then9.i.i_crit_edge:             ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body5.i.i.for.body.i.i.i_crit_edge
  %87 = phi ptr [ %89, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %86, %for.body5.i.i.for.body.i.i.i_crit_edge ]
  %func.02.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %call5.i.i.i.i, %for.body5.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i.i = tail call i32 @strcmp(ptr noundef nonnull %84, ptr noundef nonnull %87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %pxa2xx_find_function.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.pxa_pinctrl_function, ptr %func.02.i.i.i, i32 1
  %88 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %incdec.ptr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.if.then9.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.if.then9.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i.i

pxa2xx_find_function.exit.i.i:                    ; preds = %for.body.i.i.i
  %tobool8.not.i.i = icmp eq ptr %func.02.i.i.i, null
  br i1 %tobool8.not.i.i, label %pxa2xx_find_function.exit.i.i.if.then9.i.i_crit_edge, label %pxa2xx_find_function.exit.i.i.for.inc.i.i_crit_edge

pxa2xx_find_function.exit.i.i.for.inc.i.i_crit_edge: ; preds = %pxa2xx_find_function.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

pxa2xx_find_function.exit.i.i.if.then9.i.i_crit_edge: ; preds = %pxa2xx_find_function.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %pxa2xx_find_function.exit.i.i.if.then9.i.i_crit_edge, %for.inc.i.i.i.if.then9.i.i_crit_edge, %for.body5.i.i.if.then9.i.i_crit_edge
  %90 = ptrtoint ptr %nfuncs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nfuncs.i.i, align 4
  %inc.i.i = add i32 %91, 1
  store i32 %inc.i.i, ptr %nfuncs.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.pxa_pinctrl_function, ptr %call5.i.i.i.i, i32 %91
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %84, ptr %add.ptr.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %pxa2xx_find_function.exit.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.pxa_desc_function, ptr %df.053.i.i, i32 1
  %93 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %94, null
  br i1 %tobool4.not.i.i, label %for.inc.i.i.for.inc13.i.i_crit_edge, label %for.inc.i.i.for.body5.i.i_crit_edge

for.inc.i.i.for.body5.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i.i

for.inc.i.i.for.inc13.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc13.i.i

for.inc13.i.i:                                    ; preds = %for.inc.i.i.for.inc13.i.i_crit_edge, %for.body.i.i.for.inc13.i.i_crit_edge
  %inc14.i.i = add nuw i32 %i.055.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc14.i.i, %77
  br i1 %exitcond.not.i.i, label %for.inc13.i.i.for.end15.i.i_crit_edge, label %for.inc13.i.i.for.body.i.i_crit_edge

for.inc13.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc13.i.i.for.end15.i.i_crit_edge:            ; preds = %for.inc13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end15.i.i

for.end15.i.i:                                    ; preds = %for.inc13.i.i.for.end15.i.i_crit_edge, %for.cond.preheader.i.i.for.end15.i.i_crit_edge
  %95 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev35, align 4
  %nfuncs17.i.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 11
  %97 = ptrtoint ptr %nfuncs17.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nfuncs17.i.i, align 4
  %mul18.i.i = mul i32 %98, 12
  %call19.i.i = tail call ptr @devm_kmemdup(ptr noundef %96, ptr noundef nonnull %call5.i.i.i.i, i32 noundef %mul18.i.i, i32 noundef 3264) #6
  %functions20.i.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 12
  %99 = ptrtoint ptr %functions20.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call19.i.i, ptr %functions20.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %call19.i.i, null
  br i1 %tobool22.not.i.i, label %for.end15.i.i.cleanup_crit_edge, label %if.end30.i

for.end15.i.i.cleanup_crit_edge:                  ; preds = %for.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30.i:                                       ; preds = %for.end15.i.i
  %100 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev35, align 4
  tail call void @devm_kfree(ptr noundef %101, ptr noundef nonnull %call5.i.i.i.i) #6
  %102 = ptrtoint ptr %npins1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %npins1.i, align 4
  %104 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %103, i32 4) #6
  %105 = extractvalue { i32, i1 } %104, 1
  br i1 %105, label %if.end30.i.cleanup_crit_edge, label %devm_kmalloc_array.exit.i.i, !prof !59

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kmalloc_array.exit.i.i:                      ; preds = %if.end30.i
  %106 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev35, align 4
  %108 = extractvalue { i32, i1 } %104, 0
  %call5.i.i75.i = tail call noalias ptr @devm_kmalloc(ptr noundef %107, i32 noundef %108, i32 noundef 3264) #6
  %tobool.not.i76.i = icmp eq ptr %call5.i.i75.i, null
  br i1 %tobool.not.i76.i, label %devm_kmalloc_array.exit.i.i.cleanup_crit_edge, label %for.cond.preheader.i78.i

devm_kmalloc_array.exit.i.i.cleanup_crit_edge:    ; preds = %devm_kmalloc_array.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i78.i:                         ; preds = %devm_kmalloc_array.exit.i.i
  %109 = ptrtoint ptr %nfuncs17.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nfuncs17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp87.not.i.i = icmp eq i32 %110, 0
  br i1 %cmp87.not.i.i, label %for.cond.preheader.i78.i.if.end82_crit_edge, label %for.cond.preheader.i78.i.for.cond1.preheader.i.i_crit_edge

for.cond.preheader.i78.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i78.i
  br label %for.cond1.preheader.i.i

for.cond.preheader.i78.i.if.end82_crit_edge:      ; preds = %for.cond.preheader.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

for.cond1.preheader.i.i:                          ; preds = %if.end30.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond.preheader.i78.i.for.cond1.preheader.i.i_crit_edge
  %i.088.i.i = phi i32 [ %inc33.i.i, %if.end30.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %for.cond.preheader.i78.i.for.cond1.preheader.i.i_crit_edge ]
  %111 = ptrtoint ptr %npins1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %npins1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp382.not.i.i = icmp eq i32 %112, 0
  br i1 %cmp382.not.i.i, label %for.cond1.preheader.i.i.for.end22.i.i_crit_edge, label %for.body4.lr.ph.i.i

for.cond1.preheader.i.i.for.end22.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i.i

for.body4.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %113 = ptrtoint ptr %ppins2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ppins2.i, align 4
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.inc20.i.i.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %ngroups.085.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %ngroups.1.lcssa.i.i, %for.inc20.i.i.for.body4.i.i_crit_edge ]
  %j.083.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %inc21.i.i, %for.inc20.i.i.for.body4.i.i_crit_edge ]
  %functions.i.i = getelementptr %struct.pxa_desc_pin, ptr %114, i32 %j.083.i.i, i32 1
  %115 = ptrtoint ptr %functions.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %functions.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %tobool6.not79.i.i = icmp eq ptr %118, null
  br i1 %tobool6.not79.i.i, label %for.body4.i.i.for.inc20.i.i_crit_edge, label %for.body7.lr.ph.i.i

for.body4.i.i.for.inc20.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i.i

for.body7.lr.ph.i.i:                              ; preds = %for.body4.i.i
  %119 = ptrtoint ptr %functions20.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %functions20.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.pxa_pinctrl_function, ptr %120, i32 %i.088.i.i
  %name17.i.i = getelementptr %struct.pxa_desc_pin, ptr %114, i32 %j.083.i.i, i32 0, i32 1
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %for.inc.i82.i.for.body7.i.i_crit_edge, %for.body7.lr.ph.i.i
  %121 = phi ptr [ %118, %for.body7.lr.ph.i.i ], [ %128, %for.inc.i82.i.for.body7.i.i_crit_edge ]
  %df.081.i.i = phi ptr [ %116, %for.body7.lr.ph.i.i ], [ %incdec.ptr.i81.i, %for.inc.i82.i.for.body7.i.i_crit_edge ]
  %ngroups.180.i.i = phi i32 [ %ngroups.085.i.i, %for.body7.lr.ph.i.i ], [ %ngroups.2.i.i, %for.inc.i82.i.for.body7.i.i_crit_edge ]
  %122 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx9.i.i, align 4
  %call12.i.i = tail call i32 @strcmp(ptr noundef %123, ptr noundef nonnull %121) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %for.body7.i.i.for.inc.i82.i_crit_edge

for.body7.i.i.for.inc.i82.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i82.i

if.then14.i.i:                                    ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %name17.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name17.i.i, align 4
  %inc.i80.i = add i32 %ngroups.180.i.i, 1
  %arrayidx18.i.i = getelementptr ptr, ptr %call5.i.i75.i, i32 %ngroups.180.i.i
  %126 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %arrayidx18.i.i, align 4
  br label %for.inc.i82.i

for.inc.i82.i:                                    ; preds = %if.then14.i.i, %for.body7.i.i.for.inc.i82.i_crit_edge
  %ngroups.2.i.i = phi i32 [ %ngroups.180.i.i, %for.body7.i.i.for.inc.i82.i_crit_edge ], [ %inc.i80.i, %if.then14.i.i ]
  %incdec.ptr.i81.i = getelementptr %struct.pxa_desc_function, ptr %df.081.i.i, i32 1
  %127 = ptrtoint ptr %incdec.ptr.i81.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %incdec.ptr.i81.i, align 4
  %tobool6.not.i.i = icmp eq ptr %128, null
  br i1 %tobool6.not.i.i, label %for.inc.i82.i.for.inc20.i.i_crit_edge, label %for.inc.i82.i.for.body7.i.i_crit_edge

for.inc.i82.i.for.body7.i.i_crit_edge:            ; preds = %for.inc.i82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i.i

for.inc.i82.i.for.inc20.i.i_crit_edge:            ; preds = %for.inc.i82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i.i

for.inc20.i.i:                                    ; preds = %for.inc.i82.i.for.inc20.i.i_crit_edge, %for.body4.i.i.for.inc20.i.i_crit_edge
  %ngroups.1.lcssa.i.i = phi i32 [ %ngroups.085.i.i, %for.body4.i.i.for.inc20.i.i_crit_edge ], [ %ngroups.2.i.i, %for.inc.i82.i.for.inc20.i.i_crit_edge ]
  %inc21.i.i = add nuw i32 %j.083.i.i, 1
  %exitcond.not.i83.i = icmp eq i32 %inc21.i.i, %112
  br i1 %exitcond.not.i83.i, label %for.inc20.i.i.for.end22.i.i_crit_edge, label %for.inc20.i.i.for.body4.i.i_crit_edge

for.inc20.i.i.for.body4.i.i_crit_edge:            ; preds = %for.inc20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i.i

for.inc20.i.i.for.end22.i.i_crit_edge:            ; preds = %for.inc20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i.i

for.end22.i.i:                                    ; preds = %for.inc20.i.i.for.end22.i.i_crit_edge, %for.cond1.preheader.i.i.for.end22.i.i_crit_edge
  %ngroups.0.lcssa.i.i = phi i32 [ 0, %for.cond1.preheader.i.i.for.end22.i.i_crit_edge ], [ %ngroups.1.lcssa.i.i, %for.inc20.i.i.for.end22.i.i_crit_edge ]
  %129 = ptrtoint ptr %functions20.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %functions20.i.i, align 4
  %ngroups24.i.i = getelementptr %struct.pxa_pinctrl_function, ptr %130, i32 %i.088.i.i, i32 2
  %131 = ptrtoint ptr %ngroups24.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %ngroups.0.lcssa.i.i, ptr %ngroups24.i.i, align 4
  %132 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ngroups.0.lcssa.i.i, i32 4) #6
  %133 = extractvalue { i32, i1 } %132, 1
  br i1 %133, label %devm_kmalloc_array.exit70.thread.i.i, label %devm_kmalloc_array.exit70.i.i, !prof !59

devm_kmalloc_array.exit70.thread.i.i:             ; preds = %for.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %groups74.i.i = getelementptr %struct.pxa_pinctrl_function, ptr %130, i32 %i.088.i.i, i32 1
  %134 = ptrtoint ptr %groups74.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %groups74.i.i, align 4
  br label %cleanup

devm_kmalloc_array.exit70.i.i:                    ; preds = %for.end22.i.i
  %135 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev35, align 4
  %137 = extractvalue { i32, i1 } %132, 0
  %call5.i67.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %136, i32 noundef %137, i32 noundef 3264) #6
  %groups.i.i = getelementptr %struct.pxa_pinctrl_function, ptr %130, i32 %i.088.i.i, i32 1
  %138 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call5.i67.i.i, ptr %groups.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %call5.i67.i.i, null
  br i1 %tobool28.not.i.i, label %devm_kmalloc_array.exit70.i.i.cleanup_crit_edge, label %if.end30.i.i

devm_kmalloc_array.exit70.i.i.cleanup_crit_edge:  ; preds = %devm_kmalloc_array.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30.i.i:                                     ; preds = %devm_kmalloc_array.exit70.i.i
  %mul.i84.i = shl nuw i32 %ngroups.0.lcssa.i.i, 2
  %139 = call ptr @memcpy(ptr %call5.i67.i.i, ptr %call5.i.i75.i, i32 %mul.i84.i)
  %inc33.i.i = add nuw i32 %i.088.i.i, 1
  %140 = ptrtoint ptr %nfuncs17.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nfuncs17.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc33.i.i, %141
  br i1 %cmp.i.i, label %if.end30.i.i.for.cond1.preheader.i.i_crit_edge, label %if.end30.i.i.if.end82_crit_edge

if.end30.i.i.if.end82_crit_edge:                  ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.end30.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

if.end82:                                         ; preds = %if.end30.i.i.if.end82_crit_edge, %for.cond.preheader.i78.i.if.end82_crit_edge
  %142 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev35, align 4
  tail call void @devm_kfree(ptr noundef %143, ptr noundef nonnull %call5.i.i75.i) #6
  %call85 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %call.i) #6
  %pctl_dev = getelementptr inbounds %struct.pxa_pinctrl, ptr %call.i, i32 0, i32 6
  %144 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call85, ptr %pctl_dev, align 4
  %cmp.i = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end91, label %do.end98

do.end91:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %145 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pctl_dev, align 4
  %147 = ptrtoint ptr %146 to i32
  br label %cleanup

do.end98:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %do.end91, %devm_kmalloc_array.exit70.i.i.cleanup_crit_edge, %devm_kmalloc_array.exit70.thread.i.i, %devm_kmalloc_array.exit.i.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %for.end15.i.i.cleanup_crit_edge, %devm_kcalloc.exit.i.i.cleanup_crit_edge, %for.end26.i.cleanup_crit_edge, %devm_kmalloc_array.exit.i.cleanup_crit_edge, %devm_kmalloc_array.exit.thread.i, %devm_kcalloc.exit.i.cleanup_crit_edge, %for.end78.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %devm_kcalloc.exit172.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %147, %do.end91 ], [ 0, %do.end98 ], [ -12, %for.end.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit172.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread.i ], [ -12, %for.end78.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.cleanup_crit_edge ], [ -12, %for.end15.i.i.cleanup_crit_edge ], [ -12, %for.end26.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.i.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit70.thread.i.i ], [ -12, %if.end30.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit70.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_pctrl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %ngroups = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pxa2xx_pctrl_get_group_name(ptr noundef %pctldev, i32 noundef %tgroup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %add.ptr = getelementptr %struct.pxa_pinctrl_group, ptr %1, i32 %tgroup
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_pctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %tgroup, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.pxa_pinctrl_group, ptr %1, i32 %tgroup, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pin, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_get_functions_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %nfuncs = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %nfuncs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfuncs, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pxa2xx_pmx_get_func_name(ptr noundef %pctldev, i32 noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %add.ptr = getelementptr %struct.pxa_pinctrl_function, ptr %1, i32 %function
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_pmx_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.pxa_pinctrl_function, ptr %1, i32 %function, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %ngroups = getelementptr %struct.pxa_pinctrl_function, ptr %1, i32 %function, i32 2
  %5 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ngroups, align 4
  %7 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_pmx_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %tgroup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %add.ptr = getelementptr %struct.pxa_pinctrl_group, ptr %1, i32 %tgroup
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %functions = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functions, align 4
  %add.ptr1 = getelementptr %struct.pxa_pinctrl_function, ptr %5, i32 %function
  %6 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr1, align 4
  %npins.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29.not.i = icmp eq i32 %9, 0
  br i1 %cmp29.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %ppins.i = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %ppins.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc11.i.for.body.i_crit_edge ]
  %name.i = getelementptr %struct.pxa_desc_pin, ptr %11, i32 %i.030.i, i32 0, i32 1
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc11.i_crit_edge

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11.i

if.then.i:                                        ; preds = %for.body.i
  %functions.i = getelementptr %struct.pxa_desc_pin, ptr %11, i32 %i.030.i, i32 1
  %14 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functions.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool4.not27.i = icmp eq ptr %17, null
  br i1 %tobool4.not27.i, label %if.then.i.for.inc11.i_crit_edge, label %if.then.i.for.body5.i_crit_edge

if.then.i.for.body5.i_crit_edge:                  ; preds = %if.then.i
  br label %for.body5.i

if.then.i.for.inc11.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %if.then.i.for.body5.i_crit_edge
  %18 = phi ptr [ %20, %for.inc.i.for.body5.i_crit_edge ], [ %17, %if.then.i.for.body5.i_crit_edge ]
  %df.028.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body5.i_crit_edge ], [ %15, %if.then.i.for.body5.i_crit_edge ]
  %call7.i = tail call i32 @strcmp(ptr noundef nonnull %18, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %pxa_desc_by_func_group.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body5.i
  %incdec.ptr.i = getelementptr %struct.pxa_desc_function, ptr %df.028.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %for.inc.i.for.inc11.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.inc.i.for.inc11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11.i

for.inc11.i:                                      ; preds = %for.inc.i.for.inc11.i_crit_edge, %if.then.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc.i = add nuw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc11.i.cleanup_crit_edge, label %for.inc11.i.for.body.i_crit_edge

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc11.i.cleanup_crit_edge:                    ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pxa_desc_by_func_group.exit:                      ; preds = %for.body5.i
  %tobool.not = icmp eq ptr %df.028.i, null
  br i1 %tobool.not, label %pxa_desc_by_func_group.exit.cleanup_crit_edge, label %if.end

pxa_desc_by_func_group.exit.cleanup_crit_edge:    ; preds = %pxa_desc_by_func_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pxa_desc_by_func_group.exit
  %pin4 = getelementptr %struct.pxa_pinctrl_group, ptr %1, i32 %tgroup, i32 1
  %21 = ptrtoint ptr %pin4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pin4, align 4
  %base_gafr = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %base_gafr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_gafr, align 4
  %.frozen = freeze i32 %22
  %div = sdiv i32 %.frozen, 16
  %arrayidx = getelementptr ptr, ptr %24, i32 %div
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %base_gpdr = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %base_gpdr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_gpdr, align 4
  %div5 = sdiv i32 %22, 32
  %arrayidx6 = getelementptr ptr, ptr %28, i32 %div5
  %29 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx6, align 4
  %31 = mul i32 %div, 16
  %rem.decomposed = sub i32 %.frozen, %31
  %shl = shl nsw i32 %rem.decomposed, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa2xx_pmx_set_mux.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa2xx_pmx_set_mux, %do.body17)) #6
          to label %if.then12 [label %do.body17], !srcloc !60

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %muxval = getelementptr inbounds %struct.pxa_desc_function, ptr %df.028.i, i32 0, i32 1
  %34 = ptrtoint ptr %muxval to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %muxval, align 4
  %conv = zext i8 %35 to i32
  %36 = lshr i32 %conv, 1
  %and = and i32 %conv, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa2xx_pmx_set_mux.__UNIQUE_ID_ddebug224, ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %22, i32 noundef %36, i32 noundef %and) #6
  br label %do.body17

do.body17:                                        ; preds = %if.then12, %if.end
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #6
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !61
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %shl28 = shl i32 3, %shl
  %neg = xor i32 %shl28, -1
  %and29 = and i32 %38, %neg
  %muxval30 = getelementptr inbounds %struct.pxa_desc_function, ptr %df.028.i, i32 0, i32 1
  %39 = ptrtoint ptr %muxval30 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %muxval30, align 4
  %41 = lshr i8 %40, 1
  %42 = zext i8 %41 to i32
  %shl33 = shl i32 %42, %shl
  %or = or i32 %shl33, %and29
  %43 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %43) #6, !srcloc !62
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !61
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %rem3780 = and i32 %22, 31
  %shl38 = shl nuw i32 1, %rem3780
  %neg39 = xor i32 %shl38, -1
  %and40 = and i32 %45, %neg39
  %46 = ptrtoint ptr %muxval30 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %muxval30, align 4
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool44.not = icmp eq i8 %48, 0
  %spec.select = select i1 %tobool44.not, i32 0, i32 %shl38
  %or47 = or i32 %spec.select, %and40
  %49 = tail call i32 @llvm.bswap.i32(i32 %or47)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %49) #6, !srcloc !62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call21) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %pxa_desc_by_func_group.exit.cleanup_crit_edge, %for.inc11.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body17 ], [ -22, %pxa_desc_by_func_group.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_pmx_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin, i1 noundef zeroext %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %base_gpdr = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base_gpdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_gpdr, align 4
  %div34 = lshr i32 %pin, 5
  %arrayidx = getelementptr ptr, ptr %1, i32 %div34
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa2xx_pmx_gpio_set_direction.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa2xx_pmx_gpio_set_direction, %do.body10)) #6
          to label %if.then [label %do.body10], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %lnot7 = xor i1 %input, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa2xx_pmx_gpio_set_direction.__UNIQUE_ID_ddebug223, ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %pin, i32 noundef %lnot.ext8) #6
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !61
  %rem = and i32 %pin, 31
  %shl = shl nuw i32 1, %rem
  %spec.select = select i1 %input, i32 0, i32 %shl
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %or = or i32 %and, %spec.select
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #6, !srcloc !62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call13) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_pconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin1 = getelementptr %struct.pxa_pinctrl_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin1, align 4
  %base_pgsr = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %base_pgsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_pgsr, align 4
  %div31 = lshr i32 %3, 5
  %arrayidx = getelementptr ptr, ptr %5, i32 %div31
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !61
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 15, i32 0
  %10 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %config, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa2xx_pconf_group_get.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa2xx_pconf_group_get, %do.end23)) #6
          to label %if.then [label %do.end23], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %lnot.ext21 = zext i1 %tobool to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa2xx_pconf_group_get.__UNIQUE_ID_ddebug225, ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %lnot.ext21) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_pconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %groups = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin1 = getelementptr %struct.pxa_pinctrl_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin1, align 4
  %base_pgsr = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %base_pgsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_pgsr, align 4
  %div48 = lshr i32 %3, 5
  %arrayidx = getelementptr ptr, ptr %5, i32 %div48
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp51.not = icmp eq i32 %num_configs, 0
  br i1 %cmp51.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body:                                         ; preds = %sw.bb.for.body_crit_edge, %entry.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %sw.bb.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %configs, i32 %i.052
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %and.i = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cond33 = icmp eq i32 %and.i, 15
  br i1 %cond33, label %sw.bb, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.cond.do.body_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.do.body_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i.le = lshr i32 %9, 8
  br label %do.body

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %entry.do.body_crit_edge
  %is_set.0.lcssa = phi i32 [ %shr.i.le, %for.cond.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa2xx_pconf_group_set.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa2xx_pconf_group_set, %do.body11)) #6
          to label %if.then [label %do.body11], !srcloc !60

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pxa_pinctrl, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa2xx_pconf_group_set.__UNIQUE_ID_ddebug226, ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %is_set.0.lcssa) #6
  br label %do.body11

do.body11:                                        ; preds = %if.then, %do.body
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !61
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_set.0.lcssa)
  %tobool22.not = icmp eq i32 %is_set.0.lcssa, 0
  %spec.select = select i1 %tobool22.not, i32 0, i32 %shl
  %or = or i32 %and, %spec.select
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %14) #6, !srcloc !62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call15) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body11 ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @pxa2xx_pinctrl_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 398, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 418, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pxa2xx_pinctrl_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @pxa2xx_pinctrl_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 422, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pxa2xx_pinctrl_init._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @pxa2xx_pinctrl_init._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_pxa2xx_pinctrl_init, !17, !"__ksymtab_pxa2xx_pinctrl_init", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 426, i32 1}
!18 = !{ptr @__UNIQUE_ID_author229, !19, !"__UNIQUE_ID_author229", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 428, i32 1}
!20 = !{ptr @__UNIQUE_ID_description230, !21, !"__UNIQUE_ID_description230", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 429, i32 1}
!22 = !{ptr @__UNIQUE_ID_file231, !23, !"__UNIQUE_ID_file231", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 430, i32 1}
!24 = !{ptr @__UNIQUE_ID_license232, !23, !"__UNIQUE_ID_license232", i1 false, i1 false}
!25 = !{ptr @pxa2xx_pinctrl_desc, !26, !"pxa2xx_pinctrl_desc", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 246, i32 28}
!27 = !{ptr @pxa2xx_pctl_ops, !28, !"pxa2xx_pctl_ops", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 54, i32 33}
!29 = !{ptr @pxa2xx_pinmux_ops, !30, !"pxa2xx_pinmux_ops", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 176, i32 32}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 159, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pxa2xx_pmx_set_mux.__UNIQUE_ID_ddebug224, !32, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 94, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pxa2xx_pmx_gpio_set_direction.__UNIQUE_ID_ddebug223, !37, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!40 = !{ptr @pxa2xx_pconf_ops, !41, !"pxa2xx_pconf_ops", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 240, i32 33}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 200, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pxa2xx_pconf_group_get.__UNIQUE_ID_ddebug225, !43, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pxa/pinctrl-pxa2xx.c", i32 228, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pxa2xx_pconf_group_set.__UNIQUE_ID_ddebug226, !47, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148657021, i64 2148657026, i64 2148657039, i64 2148657083, i64 2148657117, i64 2148657138}
!61 = !{i64 1190282}
!62 = !{i64 1189864}
