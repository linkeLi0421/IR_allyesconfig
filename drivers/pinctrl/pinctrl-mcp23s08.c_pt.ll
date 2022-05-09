; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-mcp23s08.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-mcp23s08.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mcp23x08_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_mcp23x08_regmap\09\09\09\09"
module asm "\09.long\09__crc_mcp23x08_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcp23x08_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22mcp23x08_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_mcp23x08_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcp23x17_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_mcp23x17_regmap\09\09\09\09"
module asm "\09.long\09__crc_mcp23x17_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcp23x17_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22mcp23x17_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_mcp23x17_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcp23s08_probe_one\22, \22a\22\09"
module asm "\09.weak\09__crc_mcp23s08_probe_one\09\09\09\09"
module asm "\09.long\09__crc_mcp23s08_probe_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcp23s08_probe_one:\09\09\09\09\09"
module asm "\09.asciz \09\22mcp23s08_probe_one\22\09\09\09\09\09"
module asm "__kstrtabns_mcp23s08_probe_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mcp23s08 = type { i8, i8, i8, i16, i16, i32, i8, i32, %struct.mutex, %struct.gpio_chip, %struct.irq_chip, ptr, ptr, ptr, %struct.pinctrl_desc, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@mcp23x08_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mcp23x08_volatile_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mcp23x08_precious_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mcp23x08_precious_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mcp23x08_defaults = internal constant { [8 x %struct.reg_default], [32 x i8] } { [8 x %struct.reg_default] [%struct.reg_default { i32 0, i32 255 }, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 10, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mcp23x08_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 10, ptr null, ptr null, ptr @mcp23x08_volatile_table, ptr @mcp23x08_precious_table, ptr null, ptr null, ptr @mcp23x08_defaults, i32 8, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_mcp23x08_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcp23x08_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_mcp23x08_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcp23x08_regmap to i32), ptr @__kstrtab_mcp23x08_regmap, ptr @__kstrtabns_mcp23x08_regmap }, section "___ksymtab_gpl+mcp23x08_regmap", align 4
@mcp23x17_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mcp23x17_volatile_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mcp23x17_precious_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mcp23x17_precious_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mcp23x17_defaults = internal constant { [8 x %struct.reg_default], [32 x i8] } { [8 x %struct.reg_default] [%struct.reg_default { i32 0, i32 65535 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 20, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mcp23x17_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr @mcp23x17_volatile_table, ptr @mcp23x17_precious_table, ptr null, ptr null, ptr @mcp23x17_defaults, i32 8, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_mcp23x17_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcp23x17_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_mcp23x17_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcp23x17_regmap to i32), ptr @__kstrtab_mcp23x17_regmap, ptr @__kstrtabns_mcp23x17_regmap }, section "___ksymtab_gpl+mcp23x17_regmap", align 4
@mcp23s08_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mcp->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't identify chip %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"microchip,irq-active-high\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"microchip,irq-mirror\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't write IOCON %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mcp23s08_probe_one.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcp23s08_probe_one.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't add GPIO chip\0A\00", [43 x i8] zeroinitializer }, align 32
@mcp_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @mcp_pinctrl_get_groups_count, ptr @mcp_pinctrl_get_group_name, ptr @mcp_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@mcp_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @mcp_pinconf_get, ptr @mcp_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mcp23x08_pins = internal constant { [8 x %struct.pinctrl_pin_desc], [32 x i8] } { [8 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.22, ptr null }], [32 x i8] zeroinitializer }, align 32
@mcp23x17_pins = internal constant { [16 x %struct.pinctrl_pin_desc], [32 x i8] } { [16 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.30, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't register controller\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"can't setup IRQ\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_mcp23s08_probe_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcp23s08_probe_one = external dso_local constant [0 x i8], align 1
@__ksymtab_mcp23s08_probe_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcp23s08_probe_one to i32), ptr @__kstrtab_mcp23s08_probe_one, ptr @__kstrtabns_mcp23s08_probe_one }, section "___ksymtab_gpl+mcp23s08_probe_one", align 4
@__UNIQUE_ID_file229 = internal constant [55 x i8] c"pinctrl_mcp23s08.file=drivers/pinctrl/pinctrl-mcp23s08\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [29 x i8] c"pinctrl_mcp23s08.license=GPL\00", section ".modinfo", align 1
@mcp23x08_volatile_range = internal constant { %struct.regmap_range, [24 x i8] } { %struct.regmap_range { i32 7, i32 9 }, [24 x i8] zeroinitializer }, align 32
@mcp23x08_precious_range = internal constant { %struct.regmap_range, [24 x i8] } { %struct.regmap_range { i32 9, i32 9 }, [24 x i8] zeroinitializer }, align 32
@mcp23x17_volatile_range = internal constant { %struct.regmap_range, [24 x i8] } { %struct.regmap_range { i32 14, i32 18 }, [24 x i8] zeroinitializer }, align 32
@mcp23x17_precious_range = internal constant { %struct.regmap_range, [24 x i8] } { %struct.regmap_range { i32 16, i32 18 }, [24 x i8] zeroinitializer }, align 32
@mcp_pinconf_set.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinctrl_mcp23s08\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcp_pinconf_set\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pinctrl/pinctrl-mcp23s08.c\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid config param %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@mcp23s08_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.13, i32 519, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to request IRQ#%d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcp23s08_irq_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp23s08_irq_setup._entry_ptr = internal global ptr @mcp23s08_irq_setup._entry, section ".printk_index", align 4
@mcp23s08_irq.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.35, ptr @.str.13, ptr @.str.36, i8 0, i8 94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcp23s08_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"intcap 0x%04X intf 0x%04X gpio_orig 0x%04X gpio 0x%04X\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 16]
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"mcp23x08_volatile_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 62, i32 41 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"mcp23x08_precious_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 72, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"mcp23x08_defaults\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 46, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"mcp23x08_regmap\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 77, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"mcp23x17_volatile_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 107, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"mcp23x17_precious_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 117, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"mcp23x17_defaults\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 91, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"mcp23x17_regmap\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 122, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 535, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 561, i32 49 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 569, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 572, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 576, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 578, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 579, i32 47 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 603, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 619, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 621, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"mcp_pinctrl_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 211, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"mcp_pinconf_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 271, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"mcp23x08_pins\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 162, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"mcp23x17_pins\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 173, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 634, i32 52 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 639, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [24 x i8] c"mcp23x08_volatile_range\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 57, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [24 x i8] c"mcp23x08_precious_range\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 67, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"mcp23x17_volatile_range\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 102, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"mcp23x17_precious_range\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 112, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 263, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 163, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 164, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 165, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 166, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 167, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 168, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 169, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 170, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 182, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 183, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 184, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 185, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 186, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 187, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 188, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 189, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 518, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [38 x i8] c"../drivers/pinctrl/pinctrl-mcp23s08.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 377, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_mcp23s08_probe_one, ptr @__ksymtab_mcp23x08_regmap, ptr @__ksymtab_mcp23x17_regmap, ptr @mcp23s08_irq_setup._entry, ptr @mcp23s08_irq_setup._entry_ptr, ptr @mcp23x08_volatile_table, ptr @mcp23x08_precious_table, ptr @mcp23x08_defaults, ptr @mcp23x08_regmap, ptr @mcp23x17_volatile_table, ptr @mcp23x17_precious_table, ptr @mcp23x17_defaults, ptr @mcp23x17_regmap, ptr @mcp23s08_probe_one.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mcp23s08_probe_one.lock_key, ptr @mcp23s08_probe_one.request_key, ptr @.str.8, ptr @mcp_pinctrl_ops, ptr @mcp_pinconf_ops, ptr @mcp23x08_pins, ptr @mcp23x17_pins, ptr @.str.9, ptr @.str.10, ptr @mcp23x08_volatile_range, ptr @mcp23x08_precious_range, ptr @mcp23x17_volatile_range, ptr @mcp23x17_precious_range, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x08_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x08_precious_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x08_defaults to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x08_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x17_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x17_precious_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x17_defaults to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x17_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_probe_one.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_probe_one.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x08_pins to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x17_pins to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x08_volatile_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x08_precious_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x17_volatile_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23x17_precious_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp23s08_probe_one(ptr noundef %mcp, ptr noundef %dev, i32 noundef %addr, i32 noundef %type, i32 noundef %base) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !125
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mcp23s08_probe_one.__key) #6
  %dev1 = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 12
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 4
  %conv = trunc i32 %addr to i8
  %2 = ptrtoint ptr %mcp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %mcp, align 4
  %irq_active_high = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 1
  %3 = ptrtoint ptr %irq_active_high to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %irq_active_high, align 1
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %irq_chip = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 10
  %name = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %name, align 4
  %irq_mask = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 10, i32 7
  %9 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mcp23s08_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 10, i32 9
  %10 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mcp23s08_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 10, i32 13
  %11 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mcp23s08_irq_set_type, ptr %irq_set_type, align 4
  %irq_bus_lock = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 10, i32 15
  %12 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mcp23s08_irq_bus_lock, ptr %irq_bus_lock, align 4
  %irq_bus_sync_unlock = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 10, i32 16
  %13 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mcp23s08_irq_bus_unlock, ptr %irq_bus_sync_unlock, align 4
  %chip = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9
  %direction_input = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 8
  %14 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mcp23s08_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 10
  %15 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mcp23s08_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 9
  %16 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mcp23s08_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 12
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mcp23s08_set, ptr %set, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 40
  %18 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %base13 = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 19
  %19 = ptrtoint ptr %base13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %base, ptr %base13, align 4
  %can_sleep = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 23
  %20 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %can_sleep, align 4
  %parent = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 2
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner, align 4
  %call17 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #6
  %reset_gpio = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 15
  %23 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call17, ptr %reset_gpio, align 4
  %regmap.i = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 11
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 2
  %26 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_shift.i, align 2, !range !126
  %28 = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 5, %28
  %call.i = call i32 @regmap_read(ptr noundef %25, i32 noundef %shl.i, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i, ptr noundef nonnull @.str.2, i32 noundef %addr) #6
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %call.i223 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %irq_controller = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 6
  %frombool = zext i1 %call.i223 to i8
  %29 = ptrtoint ptr %irq_controller to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %irq_controller, align 4
  %irq = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 5
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  %call21.not = xor i1 %call.i223, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %call21.not
  br i1 %brmerge, label %if.end.if.end33_crit_edge, label %if.then25

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i224 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  %frombool28 = zext i1 %call.i224 to i8
  %32 = ptrtoint ptr %irq_active_high to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool28, ptr %irq_active_high, align 1
  %call.i225 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  %call.i226 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %if.end.if.end33_crit_edge
  %mirror.0.off0 = phi i1 [ %call.i225, %if.then25 ], [ false, %if.end.if.end33_crit_edge ]
  %open_drain.0.off0 = phi i1 [ %call.i226, %if.then25 ], [ false, %if.end.if.end33_crit_edge ]
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  %35 = and i32 %34, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %36 = icmp ne i32 %35, 8
  %brmerge221 = select i1 %36, i1 true, i1 %mirror.0.off0
  br i1 %brmerge221, label %if.end33.if.then47_crit_edge, label %lor.lhs.false40

if.end33.if.then47_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

lor.lhs.false40:                                  ; preds = %if.end33
  %37 = ptrtoint ptr %irq_active_high to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %irq_active_high, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool42.not = icmp ne i8 %38, 0
  %brmerge222 = select i1 %tobool42.not, i1 true, i1 %open_drain.0.off0
  br i1 %brmerge222, label %lor.lhs.false40.if.then47_crit_edge, label %lor.lhs.false40.if.end77_crit_edge

lor.lhs.false40.if.end77_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

lor.lhs.false40.if.then47_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

if.then47:                                        ; preds = %lor.lhs.false40.if.then47_crit_edge, %if.end33.if.then47_crit_edge
  %and48 = and i32 %34, -10795
  %39 = ptrtoint ptr %irq_active_high to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %irq_active_high, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool50.not = icmp eq i8 %40, 0
  %or = and i32 %34, -10795
  %and53 = or i32 %or, 2056
  %or52 = or i32 %and48, 2570
  %storemerge = select i1 %tobool50.not, i32 %and53, i32 %or52
  %or57 = or i32 %storemerge, 16448
  %spec.select = select i1 %mirror.0.off0, i32 %or57, i32 %storemerge
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select, ptr %status, align 4
  br i1 %open_drain.0.off0, label %if.then60, label %if.then47.if.end62_crit_edge

if.then47.if.end62_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %or61 = or i32 %43, 1028
  store i32 %or61, ptr %status, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.then47.if.end62_crit_edge
  %type.off = add i32 %type, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off)
  %switch = icmp ult i32 %type.off, 2
  br i1 %switch, label %if.then68, label %if.end62.if.end70_crit_edge

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %or69 = or i32 %45, 257
  store i32 %or69, ptr %status, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end62.if.end70_crit_edge
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %50 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg_shift.i, align 2, !range !126
  %52 = zext i8 %51 to i32
  %shl.i229 = shl nuw nsw i32 5, %52
  %call.i230 = call i32 @regmap_write(ptr noundef %49, i32 noundef %shl.i229, i32 noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %cmp72 = icmp slt i32 %call.i230, 0
  br i1 %cmp72, label %if.then74, label %if.end70.if.end77_crit_edge

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i230, ptr noundef nonnull @.str.7, i32 noundef %addr) #6
  br label %cleanup

if.end77:                                         ; preds = %if.end70.if.end77_crit_edge, %lor.lhs.false40.if.end77_crit_edge
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool79.not = icmp eq i32 %54, 0
  br i1 %tobool79.not, label %if.end77.if.end89_crit_edge, label %land.lhs.true80

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.lhs.true80:                                  ; preds = %if.end77
  %55 = ptrtoint ptr %irq_controller to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %irq_controller, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool82.not = icmp eq i8 %56, 0
  br i1 %tobool82.not, label %land.lhs.true80.if.end89_crit_edge, label %if.then84

land.lhs.true80.if.end89_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then84:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  %irq86 = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 37
  %57 = ptrtoint ptr %irq86 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %irq_chip, ptr %irq86, align 4
  %parent_handler = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 37, i32 13
  %58 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 37, i32 15
  %59 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 37, i32 16
  %60 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 37, i32 10
  %61 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 37, i32 9
  %62 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %threaded = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 37, i32 18
  %63 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %threaded, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %land.lhs.true80.if.end89_crit_edge, %if.end77.if.end89_crit_edge
  %call91 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %chip, ptr noundef %mcp, ptr noundef nonnull @mcp23s08_probe_one.lock_key, ptr noundef nonnull @mcp23s08_probe_one.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call91, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end96:                                         ; preds = %if.end89
  %pinctrl_desc = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 14
  %pctlops = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 14, i32 3
  %64 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @mcp_pinctrl_ops, ptr %pctlops, align 4
  %confops = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 14, i32 5
  %65 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mcp_pinconf_ops, ptr %confops, align 4
  %ngpio = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 9, i32 20
  %66 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ngpio, align 4
  %conv99 = zext i16 %67 to i32
  %npins = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 14, i32 2
  %68 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv99, ptr %npins, align 4
  %69 = zext i16 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i16 %67, label %if.end96.if.end116_crit_edge [
    i16 8, label %if.end96.if.end116.sink.split_crit_edge
    i16 16, label %if.then112
  ]

if.end96.if.end116.sink.split_crit_edge:          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116.sink.split

if.end96.if.end116_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then112:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116.sink.split

if.end116.sink.split:                             ; preds = %if.then112, %if.end96.if.end116.sink.split_crit_edge
  %mcp23x17_pins.sink = phi ptr [ @mcp23x17_pins, %if.then112 ], [ @mcp23x08_pins, %if.end96.if.end116.sink.split_crit_edge ]
  %pins114 = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 14, i32 1
  %70 = ptrtoint ptr %pins114 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %mcp23x17_pins.sink, ptr %pins114, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %if.end96.if.end116_crit_edge
  %owner118 = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 14, i32 6
  %71 = ptrtoint ptr %owner118 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %owner118, align 4
  %call120 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %pinctrl_desc, ptr noundef %mcp) #6
  %pctldev = getelementptr inbounds %struct.mcp23s08, ptr %mcp, i32 0, i32 13
  %72 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call120, ptr %pctldev, align 4
  %cmp.i = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %call120 to i32
  %call126 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %73, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end127:                                        ; preds = %if.end116
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool129.not = icmp eq i32 %75, 0
  br i1 %tobool129.not, label %if.end127.cleanup_crit_edge, label %if.then130

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then130:                                       ; preds = %if.end127
  %76 = ptrtoint ptr %irq_active_high to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %irq_active_high, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i231 = icmp eq i8 %77, 0
  %..i = select i1 %tobool.not.i231, i32 8328, i32 8324
  %78 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then130.dev_name.exit.i_crit_edge

if.then130.dev_name.exit.i_crit_edge:             ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %79, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then130.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %83, %if.end.i.i ], [ %81, %if.then130.dev_name.exit.i_crit_edge ]
  %call4.i = call i32 @devm_request_threaded_irq(ptr noundef %79, i32 noundef %75, ptr noundef null, ptr noundef nonnull @mcp23s08_irq, i32 noundef %..i, ptr noundef %retval.0.i.i, ptr noundef %mcp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %dev_name.exit.i.cleanup_crit_edge, label %if.then133

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then133:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent, align 4
  %86 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.31, i32 noundef %87, i32 noundef %call4.i) #9
  %call134 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call4.i, ptr noundef nonnull @.str.10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %dev_name.exit.i.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.then123, %if.then94, %if.then74, %if.then
  %retval.0 = phi i32 [ %call20, %if.then ], [ %call75, %if.then74 ], [ %call95, %if.then94 ], [ %call126, %if.then123 ], [ %call134, %if.then133 ], [ 0, %if.end127.cleanup_crit_edge ], [ 0, %dev_name.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp23s08_irq_mask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl.i = shl nuw i32 1, %3
  %conv1.i = and i32 %shl.i, 65535
  %regmap.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %reg_shift.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 2
  %6 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_shift.i.i, align 2, !range !126
  %8 = zext i8 %7 to i32
  %shl.i.i = shl nuw nsw i32 2, %8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %shl.i.i, i32 noundef %conv1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp23s08_irq_unmask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl.i = shl nuw i32 1, %3
  %conv1.i = and i32 %shl.i, 65535
  %regmap.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %reg_shift.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 2
  %6 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_shift.i.i, align 2, !range !126
  %8 = zext i8 %7 to i32
  %shl.i.i = shl nuw nsw i32 2, %8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %shl.i.i, i32 noundef %conv1.i, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23s08_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %3
  %conv1.i = and i32 %shl.i, 65535
  %regmap.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %reg_shift.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 2
  %6 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_shift.i.i, align 2, !range !126
  %8 = zext i8 %7 to i32
  %shl.i.i = shl nuw nsw i32 4, %8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %shl.i.i, i32 noundef %conv1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %irq_rise = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 3
  %9 = ptrtoint ptr %irq_rise to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %irq_rise, align 4
  %11 = trunc i32 %shl.i to i16
  %conv3 = or i16 %10, %11
  store i16 %conv3, ptr %irq_rise, align 4
  %irq_fall = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 4
  %12 = ptrtoint ptr %irq_fall to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %irq_fall, align 2
  %conv7 = or i16 %13, %11
  store i16 %conv7, ptr %irq_fall, align 2
  br label %cleanup

if.else:                                          ; preds = %entry
  %and8 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.else21, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i85 = shl nuw i32 1, %3
  %conv1.i86 = and i32 %shl.i85, 65535
  %regmap.i.i87 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %14 = ptrtoint ptr %regmap.i.i87 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i87, align 4
  %reg_shift.i.i88 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 2
  %16 = ptrtoint ptr %reg_shift.i.i88 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_shift.i.i88, align 2, !range !126
  %18 = zext i8 %17 to i32
  %shl.i.i89 = shl nuw nsw i32 4, %18
  %call.i.i.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %shl.i.i89, i32 noundef %conv1.i86, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %irq_rise12 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 3
  %19 = ptrtoint ptr %irq_rise12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %irq_rise12, align 4
  %21 = trunc i32 %shl.i85 to i16
  %conv15 = or i16 %20, %21
  store i16 %conv15, ptr %irq_rise12, align 4
  %irq_fall17 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 4
  %22 = ptrtoint ptr %irq_fall17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %irq_fall17, align 2
  %24 = xor i16 %21, -1
  %conv20 = and i16 %23, %24
  store i16 %conv20, ptr %irq_fall17, align 2
  br label %cleanup

if.else21:                                        ; preds = %if.else
  %and22 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else37, label %if.then24

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i91 = shl nuw i32 1, %3
  %conv1.i92 = and i32 %shl.i91, 65535
  %regmap.i.i93 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %25 = ptrtoint ptr %regmap.i.i93 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i93, align 4
  %reg_shift.i.i94 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 2
  %27 = ptrtoint ptr %reg_shift.i.i94 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg_shift.i.i94, align 2, !range !126
  %29 = zext i8 %28 to i32
  %shl.i.i95 = shl nuw nsw i32 4, %29
  %call.i.i.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %shl.i.i95, i32 noundef %conv1.i92, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %irq_rise28 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 3
  %30 = ptrtoint ptr %irq_rise28 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %irq_rise28, align 4
  %32 = trunc i32 %shl.i91 to i16
  %33 = xor i16 %32, -1
  %conv31 = and i16 %31, %33
  store i16 %conv31, ptr %irq_rise28, align 4
  %irq_fall33 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 4
  %34 = ptrtoint ptr %irq_fall33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %irq_fall33, align 2
  %conv36 = or i16 %35, %32
  store i16 %conv36, ptr %irq_fall33, align 2
  br label %cleanup

if.else37:                                        ; preds = %if.else21
  %and38 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i97 = shl nuw i32 1, %3
  %conv1.i98 = and i32 %shl.i97, 65535
  %regmap.i.i99 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %36 = ptrtoint ptr %regmap.i.i99 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i99, align 4
  %reg_shift.i.i100 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 2
  %38 = ptrtoint ptr %reg_shift.i.i100 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reg_shift.i.i100, align 2, !range !126
  %40 = zext i8 %39 to i32
  %shl.i.i101 = shl nuw nsw i32 4, %40
  %call.i.i.i102 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %shl.i.i101, i32 noundef %conv1.i98, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = ptrtoint ptr %regmap.i.i99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i.i99, align 4
  %43 = ptrtoint ptr %reg_shift.i.i100 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg_shift.i.i100, align 2, !range !126
  %45 = zext i8 %44 to i32
  %shl.i.i107 = shl nuw nsw i32 3, %45
  %call.i.i.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %shl.i.i107, i32 noundef %conv1.i98, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.else43:                                        ; preds = %if.else37
  %and44 = and i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else43.cleanup_crit_edge, label %if.then46

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i109 = shl nuw i32 1, %3
  %conv1.i110 = and i32 %shl.i109, 65535
  %regmap.i.i111 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %46 = ptrtoint ptr %regmap.i.i111 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i111, align 4
  %reg_shift.i.i112 = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 2
  %48 = ptrtoint ptr %reg_shift.i.i112 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reg_shift.i.i112, align 2, !range !126
  %50 = zext i8 %49 to i32
  %shl.i.i113 = shl nuw nsw i32 4, %50
  %call.i.i.i114 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %shl.i.i113, i32 noundef %conv1.i110, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %51 = ptrtoint ptr %regmap.i.i111 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i.i111, align 4
  %53 = ptrtoint ptr %reg_shift.i.i112 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reg_shift.i.i112, align 2, !range !126
  %55 = zext i8 %54 to i32
  %shl.i.i119 = shl nuw nsw i32 3, %55
  %call.i.i.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %shl.i.i119, i32 noundef %conv1.i110, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.else43.cleanup_crit_edge, %if.then40, %if.then24, %if.then9, %if.then
  %retval.0 = phi i32 [ -22, %if.else43.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.then40 ], [ 0, %if.then46 ], [ 0, %if.then24 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp23s08_irq_bus_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp23s08_irq_bus_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %regmap = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 11
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %5) #6
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %call1, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23s08_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %shl.i = shl nuw i32 1, %offset
  %conv1.i = and i32 %shl.i, 65535
  %regmap.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef %conv1.i, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23s08_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !125
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg_shift.i, align 2, !range !126
  %5 = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 9, %5
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %shl.i, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %cached_gpio = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %cached_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cached_gpio, align 4
  %9 = lshr i32 %7, %offset
  %10 = and i32 %9, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %10, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %status, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23s08_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %shl = shl nuw i32 1, %offset
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %regmap.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i.i, align 4
  %reg_shift.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_shift.i.i, align 2, !range !126
  %4 = zext i8 %3 to i32
  %shl.i.i = shl nuw nsw i32 10, %4
  %conv3.i.i = select i1 %tobool.not, i32 0, i32 65535
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %shl.i.i, i32 noundef %shl, i32 noundef %conv3.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i.i.i, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp23s08_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %shl = shl nuw i32 1, %offset
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %regmap.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i.i, align 4
  %reg_shift.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_shift.i.i, align 2, !range !126
  %4 = zext i8 %3 to i32
  %shl.i.i = shl nuw nsw i32 10, %4
  %conv3.i.i = select i1 %tobool.not, i32 0, i32 65535
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %shl.i.i, i32 noundef %shl, i32 noundef %conv3.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp_pinctrl_get_groups_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @mcp_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef readnone %pins, ptr nocapture noundef readnone %num_pins) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cond9 = icmp eq i32 %and.i, 5
  br i1 %cond9, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_shift.i, align 2, !range !126
  %7 = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 6, %7
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %shl.i, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %shl = shl nuw i32 1, %pin
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %10 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %config, align 4
  %cond4 = select i1 %tobool.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond4, %if.end ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp22.not = icmp eq i32 %num_configs, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %shl.i = shl nuw i32 1, %pin
  %conv1.i = and i32 %shl.i, 65535
  %regmap.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 11
  %reg_shift.i.i = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %sw.bb.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.bb.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.023
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cond = icmp eq i32 %and.i, 5
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool.not = icmp ult i32 %1, 256
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %4 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_shift.i.i, align 2, !range !126
  %6 = zext i8 %5 to i32
  %shl.i.i = shl nuw nsw i32 6, %6
  %conv3.i.i = select i1 %tobool.not, i32 0, i32 65535
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %shl.i.i, i32 noundef %conv1.i, i32 noundef %conv3.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp_pinconf_set.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp_pinconf_set, %cleanup)) #6
          to label %if.then [label %cleanup], !srcloc !127

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mcp23s08, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp_pinconf_set.__UNIQUE_ID_ddebug227, ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %and.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %if.then ], [ -524, %do.body ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i.i, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23s08_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %intcap = alloca i32, align 4
  %intcon = alloca i32, align 4
  %intf = alloca i32, align 4
  %gpio = alloca i32, align 4
  %defval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intcap) #6
  %0 = ptrtoint ptr %intcap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %intcap, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intcon) #6
  %1 = ptrtoint ptr %intcon to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %intcon, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intf) #6
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %intf, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio) #6
  %3 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gpio, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %defval) #6
  %4 = ptrtoint ptr %defval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %defval, align 4, !annotation !125
  %lock = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 11
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_shift.i, align 2, !range !126
  %9 = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 7, %9
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %shl.i, ptr noundef nonnull %intf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.end2

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end2:                                          ; preds = %if.end
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_shift.i, align 2, !range !126
  %16 = zext i8 %15 to i32
  %shl.i171 = shl nuw nsw i32 8, %16
  %call.i172 = call i32 @regmap_read(ptr noundef %13, i32 noundef %shl.i171, ptr noundef nonnull %intcap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool4.not = icmp eq i32 %call.i172, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.unlock_crit_edge

if.end2.unlock_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end6:                                          ; preds = %if.end2
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %19 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg_shift.i, align 2, !range !126
  %21 = zext i8 %20 to i32
  %shl.i175 = shl nuw nsw i32 4, %21
  %call.i176 = call i32 @regmap_read(ptr noundef %18, i32 noundef %shl.i175, ptr noundef nonnull %intcon) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool8.not = icmp eq i32 %call.i176, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.unlock_crit_edge

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end10:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %24 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_shift.i, align 2, !range !126
  %26 = zext i8 %25 to i32
  %shl.i179 = shl nuw nsw i32 3, %26
  %call.i180 = call i32 @regmap_read(ptr noundef %23, i32 noundef %shl.i179, ptr noundef nonnull %defval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool12.not = icmp eq i32 %call.i180, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.unlock_crit_edge

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end14:                                         ; preds = %if.end10
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %29 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reg_shift.i, align 2, !range !126
  %31 = zext i8 %30 to i32
  %shl.i183 = shl nuw nsw i32 9, %31
  %call.i184 = call i32 @regmap_read(ptr noundef %28, i32 noundef %shl.i183, ptr noundef nonnull %gpio) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool16.not = icmp eq i32 %call.i184, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.unlock_crit_edge

if.end14.unlock_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end18:                                         ; preds = %if.end14
  %cached_gpio = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 7
  %32 = ptrtoint ptr %cached_gpio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cached_gpio, align 4
  %34 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gpio, align 4
  store i32 %35, ptr %cached_gpio, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp23s08_irq.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp23s08_irq, %do.end)) #6
          to label %if.then26 [label %do.end], !srcloc !127

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 4
  %38 = ptrtoint ptr %intcap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intcap, align 4
  %40 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intf, align 4
  %42 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpio, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp23s08_irq.__UNIQUE_ID_ddebug228, ptr noundef %37, ptr noundef nonnull @.str.36, i32 noundef %39, i32 noundef %41, i32 noundef %33, i32 noundef %43) #6
  br label %do.end

do.end:                                           ; preds = %if.then26, %if.end18
  %ngpio = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 9, i32 20
  %44 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp29192.not = icmp eq i16 %45, 0
  br i1 %cmp29192.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %irq_rise = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 3
  %irq_fall = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 4
  %domain = getelementptr inbounds %struct.mcp23s08, ptr %data, i32 0, i32 9, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0193 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %46 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %intf, align 4
  %shl = shl nuw i32 1, %i.0193
  %and = and i32 %47, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0193)
  %cmp33 = icmp ugt i32 %i.0193, 7
  %brmerge = select i1 %cmp33, i1 true, i1 %tobool31.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0193)
  %cmp38 = icmp ult i32 %i.0193, 8
  %brmerge161 = select i1 %cmp38, i1 true, i1 %tobool31.not
  %spec.select = select i1 %brmerge161, i32 0, i32 65280
  %intcap_mask.0 = select i1 %brmerge, i32 %spec.select, i32 255
  %48 = ptrtoint ptr %intcap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %intcap, align 4
  %and48 = and i32 %49, %shl
  %and51 = and i32 %shl, %33
  %50 = xor i32 %and48, %and51
  %51 = and i32 %intcap_mask.0, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp53.not = icmp eq i32 %51, 0
  %52 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gpio, align 4
  %and57 = and i32 %53, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and51, i32 %and57)
  %cmp64.not = icmp eq i32 %and51, %and57
  %54 = ptrtoint ptr %intcon to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %intcon, align 4
  %and68 = and i32 %55, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.end.thread, label %land.end

land.end:                                         ; preds = %for.body
  %56 = ptrtoint ptr %defval to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %defval, align 4
  %and73 = and i32 %57, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and57, i32 %and73)
  %cmp74 = icmp ne i32 %and57, %and73
  %58 = select i1 %cmp64.not, i1 %cmp53.not, i1 false
  br i1 %58, label %lor.lhs.false102, label %land.end.land.lhs.true81_crit_edge

land.end.land.lhs.true81_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true81

land.end.thread:                                  ; preds = %for.body
  %59 = select i1 %cmp64.not, i1 %cmp53.not, i1 false
  br i1 %59, label %land.end.thread.for.inc_crit_edge, label %land.end.thread.land.lhs.true81_crit_edge

land.end.thread.land.lhs.true81_crit_edge:        ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true81

land.end.thread.for.inc_crit_edge:                ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true81:                                  ; preds = %land.end.thread.land.lhs.true81_crit_edge, %land.end.land.lhs.true81_crit_edge
  %60 = phi i1 [ false, %land.end.thread.land.lhs.true81_crit_edge ], [ %cmp74, %land.end.land.lhs.true81_crit_edge ]
  %61 = ptrtoint ptr %irq_rise to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %irq_rise, align 4
  %conv83 = zext i16 %62 to i32
  %and84 = and i32 %shl, %conv83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %brmerge163 = select i1 %tobool85.not, i1 true, i1 %tobool58.not
  br i1 %brmerge163, label %land.lhs.true95, label %land.lhs.true81.if.then105_crit_edge

land.lhs.true81.if.then105_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

land.lhs.true95:                                  ; preds = %land.lhs.true81
  %63 = ptrtoint ptr %irq_fall to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %irq_fall, align 2
  %conv97 = zext i16 %64 to i32
  %and98 = and i32 %shl, %conv97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp ne i32 %and98, 0
  %brmerge167.not = select i1 %tobool99.not, i1 %tobool58.not, i1 false
  %brmerge168 = select i1 %brmerge167.not, i1 true, i1 %60
  br i1 %brmerge168, label %land.lhs.true95.if.then105_crit_edge, label %land.lhs.true95.for.inc_crit_edge

land.lhs.true95.for.inc_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true95.if.then105_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

lor.lhs.false102:                                 ; preds = %land.end
  br i1 %cmp74, label %lor.lhs.false102.if.then105_crit_edge, label %lor.lhs.false102.for.inc_crit_edge

lor.lhs.false102.for.inc_crit_edge:               ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false102.if.then105_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

if.then105:                                       ; preds = %lor.lhs.false102.if.then105_crit_edge, %land.lhs.true95.if.then105_crit_edge, %land.lhs.true81.if.then105_crit_edge
  %65 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %67 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %irq.i, align 4, !annotation !125
  %call.i185 = call ptr @__irq_resolve_mapping(ptr noundef %66, i32 noundef %i.0193, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i185, null
  br i1 %tobool.not.i, label %if.then105.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then105.irq_find_mapping.exit_crit_edge:       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then105.irq_find_mapping.exit_crit_edge
  %retval.0.i186 = phi i32 [ %69, %if.then.i ], [ 0, %if.then105.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i186) #6
  br label %for.inc

for.inc:                                          ; preds = %irq_find_mapping.exit, %lor.lhs.false102.for.inc_crit_edge, %land.lhs.true95.for.inc_crit_edge, %land.end.thread.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0193, 1
  %70 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %71 to i32
  %cmp29 = icmp ult i32 %inc, %conv
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

unlock:                                           ; preds = %if.end14.unlock_crit_edge, %if.end10.unlock_crit_edge, %if.end6.unlock_crit_edge, %if.end2.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %defval) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intcon) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intcap) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !111, !112, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @mcp23x08_regmap, !1, !"mcp23x08_regmap", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 77, i32 28}
!2 = !{ptr @__ksymtab_mcp23x08_regmap, !3, !"__ksymtab_mcp23x08_regmap", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 89, i32 1}
!4 = !{ptr @mcp23x17_regmap, !5, !"mcp23x17_regmap", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 122, i32 28}
!6 = !{ptr @__ksymtab_mcp23x17_regmap, !7, !"__ksymtab_mcp23x17_regmap", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 135, i32 1}
!8 = !{ptr @mcp23s08_probe_one.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 535, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 561, i32 49}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 569, i32 34}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 572, i32 34}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 576, i32 12}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 578, i32 43}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 579, i32 47}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 603, i32 35}
!25 = !{ptr @mcp23s08_probe_one.lock_key, !26, !"lock_key", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 619, i32 8}
!27 = !{ptr @mcp23s08_probe_one.request_key, !26, !"request_key", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 621, i32 34}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 634, i32 52}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 639, i32 35}
!34 = !{ptr @__ksymtab_mcp23s08_probe_one, !35, !"__ksymtab_mcp23s08_probe_one", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 644, i32 1}
!36 = !{ptr @__UNIQUE_ID_file229, !37, !"__UNIQUE_ID_file229", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 646, i32 1}
!38 = !{ptr @__UNIQUE_ID_license230, !37, !"__UNIQUE_ID_license230", i1 false, i1 false}
!39 = !{ptr @mcp23x08_volatile_table, !40, !"mcp23x08_volatile_table", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 62, i32 41}
!41 = !{ptr @mcp23x08_volatile_range, !42, !"mcp23x08_volatile_range", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 57, i32 34}
!43 = !{ptr @mcp23x08_precious_table, !44, !"mcp23x08_precious_table", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 72, i32 41}
!45 = !{ptr @mcp23x08_precious_range, !46, !"mcp23x08_precious_range", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 67, i32 34}
!47 = !{ptr @mcp23x08_defaults, !48, !"mcp23x08_defaults", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 46, i32 33}
!49 = !{ptr @mcp23x17_volatile_table, !50, !"mcp23x17_volatile_table", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 107, i32 41}
!51 = !{ptr @mcp23x17_volatile_range, !52, !"mcp23x17_volatile_range", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 102, i32 34}
!53 = !{ptr @mcp23x17_precious_table, !54, !"mcp23x17_precious_table", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 117, i32 41}
!55 = !{ptr @mcp23x17_precious_range, !56, !"mcp23x17_precious_range", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 112, i32 34}
!57 = !{ptr @mcp23x17_defaults, !58, !"mcp23x17_defaults", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 91, i32 33}
!59 = !{ptr @mcp_pinctrl_ops, !60, !"mcp_pinctrl_ops", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 211, i32 33}
!61 = !{ptr @mcp_pinconf_ops, !62, !"mcp_pinconf_ops", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 271, i32 33}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 263, i32 4}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mcp_pinconf_set.__UNIQUE_ID_ddebug227, !64, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 163, i32 2}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 164, i32 2}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 165, i32 2}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 166, i32 2}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 167, i32 2}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 168, i32 2}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 169, i32 2}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 170, i32 2}
!85 = !{ptr @mcp23x08_pins, !86, !"mcp23x08_pins", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 162, i32 38}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 182, i32 2}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 183, i32 2}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 184, i32 2}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 185, i32 2}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 186, i32 2}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 187, i32 2}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 188, i32 2}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 189, i32 2}
!103 = !{ptr @mcp23x17_pins, !104, !"mcp23x17_pins", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 173, i32 38}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 518, i32 3}
!107 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mcp23s08_irq_setup._entry, !106, !"_entry", i1 false, i1 false}
!111 = !{ptr @mcp23s08_irq_setup._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-mcp23s08.c", i32 377, i32 2}
!114 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mcp23s08_irq.__UNIQUE_ID_ddebug228, !113, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i8 0, i8 2}
!127 = !{i64 2148707027, i64 2148707032, i64 2148707045, i64 2148707089, i64 2148707123, i64 2148707144}
