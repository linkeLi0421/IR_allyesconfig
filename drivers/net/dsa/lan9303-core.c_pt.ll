; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/lan9303-core.c_pt.bc'
source_filename = "../drivers/net/dsa/lan9303-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lan9303_register_set\22, \22a\22\09"
module asm "\09.weak\09__crc_lan9303_register_set\09\09\09\09"
module asm "\09.long\09__crc_lan9303_register_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lan9303_register_set:\09\09\09\09\09"
module asm "\09.asciz \09\22lan9303_register_set\22\09\09\09\09\09"
module asm "__kstrtabns_lan9303_register_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lan9303_indirect_phy_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_lan9303_indirect_phy_ops\09\09\09\09"
module asm "\09.long\09__crc_lan9303_indirect_phy_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lan9303_indirect_phy_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22lan9303_indirect_phy_ops\22\09\09\09\09\09"
module asm "__kstrtabns_lan9303_indirect_phy_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lan9303_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_lan9303_probe\09\09\09\09"
module asm "\09.long\09__crc_lan9303_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lan9303_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22lan9303_probe\22\09\09\09\09\09"
module asm "__kstrtabns_lan9303_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lan9303_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_lan9303_remove\09\09\09\09"
module asm "\09.long\09__crc_lan9303_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lan9303_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22lan9303_remove\22\09\09\09\09\09"
module asm "__kstrtabns_lan9303_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lan9303_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_lan9303_shutdown\09\09\09\09"
module asm "\09.long\09__crc_lan9303_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lan9303_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22lan9303_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_lan9303_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_range = type { i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lan9303_phy_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lan9303_mib_desc = type { i32, ptr }
%struct.lan9303 = type { ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, i8, i32, [512 x %struct.lan9303_alr_cache_entry] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lan9303_alr_cache_entry = type { [6 x i8], i8, i8 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.del_port_learned_ctx = type { i32 }
%struct.port_fdb_dump_ctx = type { i32, ptr, ptr }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@lan9303_valid_regs = internal constant { [13 x %struct.regmap_range], [56 x i8] } { [13 x %struct.regmap_range] [%struct.regmap_range { i32 20, i32 23 }, %struct.regmap_range { i32 25, i32 25 }, %struct.regmap_range { i32 29, i32 29 }, %struct.regmap_range { i32 35, i32 36 }, %struct.regmap_range { i32 39, i32 39 }, %struct.regmap_range { i32 41, i32 42 }, %struct.regmap_range { i32 104, i32 106 }, %struct.regmap_range { i32 107, i32 108 }, %struct.regmap_range { i32 109, i32 111 }, %struct.regmap_range { i32 112, i32 119 }, %struct.regmap_range { i32 120, i32 122 }, %struct.regmap_range { i32 124, i32 126 }, %struct.regmap_range { i32 128, i32 183 }], [56 x i8] zeroinitializer }, align 32
@lan9303_reserved_ranges = internal constant { [10 x %struct.regmap_range], [48 x i8] } { [10 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 19 }, %struct.regmap_range { i32 24, i32 24 }, %struct.regmap_range { i32 26, i32 28 }, %struct.regmap_range { i32 30, i32 34 }, %struct.regmap_range { i32 37, i32 38 }, %struct.regmap_range { i32 40, i32 40 }, %struct.regmap_range { i32 43, i32 103 }, %struct.regmap_range { i32 123, i32 123 }, %struct.regmap_range { i32 127, i32 127 }, %struct.regmap_range { i32 184, i32 255 }], [48 x i8] zeroinitializer }, align 32
@lan9303_register_set = dso_local constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @lan9303_valid_regs, i32 13, ptr @lan9303_reserved_ranges, i32 10 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_lan9303_register_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_lan9303_register_set = external dso_local constant [0 x i8], align 1
@__ksymtab_lan9303_register_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lan9303_register_set to i32), ptr @__kstrtab_lan9303_register_set, ptr @__kstrtabns_lan9303_register_set }, section "___ksymtab+lan9303_register_set", align 4
@lan9303_indirect_phy_ops = dso_local constant { %struct.lan9303_phy_ops, [24 x i8] } { %struct.lan9303_phy_ops { ptr @lan9303_indirect_phy_read, ptr @lan9303_indirect_phy_write }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_lan9303_indirect_phy_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_lan9303_indirect_phy_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_lan9303_indirect_phy_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lan9303_indirect_phy_ops to i32), ptr @__kstrtab_lan9303_indirect_phy_ops, ptr @__kstrtabns_lan9303_indirect_phy_ops }, section "___ksymtab_gpl+lan9303_indirect_phy_ops", align 4
@lan9303_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&chip->indirect_mutex\00", [42 x i8] zeroinitializer }, align 32
@lan9303_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->alr_mutex\00", [47 x i8] zeroinitializer }, align 32
@lan9303_probe.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lan9303_core\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lan9303_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/dsa/lan9303-core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register switch: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_lan9303_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_lan9303_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_lan9303_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lan9303_probe to i32), ptr @__kstrtab_lan9303_probe, ptr @__kstrtabns_lan9303_probe }, section "___ksymtab+lan9303_probe", align 4
@lan9303_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 1378, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"shutting down failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lan9303_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lan9303_remove._entry_ptr = internal global ptr @lan9303_remove._entry, section ".printk_index", align 4
@__kstrtab_lan9303_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_lan9303_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_lan9303_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lan9303_remove to i32), ptr @__kstrtab_lan9303_remove, ptr @__kstrtabns_lan9303_remove }, section "___ksymtab+lan9303_remove", align 4
@__kstrtab_lan9303_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_lan9303_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_lan9303_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lan9303_shutdown to i32), ptr @__kstrtab_lan9303_shutdown, ptr @__kstrtabns_lan9303_shutdown }, section "___ksymtab+lan9303_shutdown", align 4
@__UNIQUE_ID_author514 = internal constant [60 x i8] c"lan9303_core.author=Juergen Borleis <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description515 = internal constant [91 x i8] c"lan9303_core.description=Core driver for SMSC/Microchip LAN9303 three port ethernet switch\00", section ".modinfo", align 1
@__UNIQUE_ID_file516 = internal constant [47 x i8] c"lan9303_core.file=drivers/net/dsa/lan9303-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license517 = internal constant [28 x i8] c"lan9303_core.license=GPL v2\00", section ".modinfo", align 1
@lan9303_read_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 255, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s failed to read offset %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lan9303_read_wait\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lan9303_read_wait._entry_ptr = internal global ptr @lan9303_read_wait._entry, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 1, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lan9303_probe_reset_gpio\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No reset GPIO defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset-duration\00", [17 x i8] zeroinitializer }, align 32
@lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str.5, ptr @.str.18, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reset duration defaults to 200 ms\0A\00", [61 x i8] zeroinitializer }, align 32
@lan9303_check_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 853, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read chip revision register: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan9303_check_device\00", [43 x i8] zeroinitializer }, align 32
@lan9303_check_device._entry_ptr = internal global ptr @lan9303_check_device._entry, section ".printk_index", align 4
@lan9303_check_device.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hint: maybe failed due to missing reset GPIO\0A\00", [50 x i8] zeroinitializer }, align 32
@lan9303_check_device._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.5, i32 863, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"expecting LAN9303 chip, but found: %X\0A\00", [57 x i8] zeroinitializer }, align 32
@lan9303_check_device._entry_ptr.24 = internal global ptr @lan9303_check_device._entry.22, section ".printk_index", align 4
@lan9303_check_device._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.5, i32 876, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable switching %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lan9303_check_device._entry_ptr.27 = internal global ptr @lan9303_check_device._entry.25, section ".printk_index", align 4
@lan9303_check_device._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.5, i32 878, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Found LAN9303 rev. %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lan9303_check_device._entry_ptr.31 = internal global ptr @lan9303_check_device._entry.28, section ".printk_index", align 4
@lan9303_check_device._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.5, i32 883, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to discover phy bootstrap setup: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@lan9303_check_device._entry_ptr.34 = internal global ptr @lan9303_check_device._entry.32, section ".printk_index", align 4
@lan9303_detect_phy_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 486, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to detect phy config: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lan9303_detect_phy_setup\00", [39 x i8] zeroinitializer }, align 32
@lan9303_detect_phy_setup._entry_ptr = internal global ptr @lan9303_detect_phy_setup._entry, section ".printk_index", align 4
@lan9303_detect_phy_setup.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Phy setup '%s' detected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1-2-3\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0-1-2\00", [26 x i8] zeroinitializer }, align 32
@lan9303_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @lan9303_get_tag_protocol, ptr null, ptr null, ptr @lan9303_setup, ptr null, ptr null, ptr null, ptr null, ptr @lan9303_phy_read, ptr @lan9303_phy_write, ptr @lan9303_adjust_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan9303_get_strings, ptr @lan9303_get_ethtool_stats, ptr @lan9303_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan9303_port_enable, ptr @lan9303_port_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan9303_port_bridge_join, ptr @lan9303_port_bridge_leave, ptr @lan9303_port_stp_state_set, ptr @lan9303_port_fast_age, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan9303_port_fdb_add, ptr @lan9303_port_fdb_del, ptr @lan9303_port_fdb_dump, ptr @lan9303_port_mdb_add, ptr @lan9303_port_mdb_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@lan9303_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 906, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port 0 is not the CPU port\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lan9303_setup\00", [18 x i8] zeroinitializer }, align 32
@lan9303_setup._entry_ptr = internal global ptr @lan9303_setup._entry, section ".printk_index", align 4
@lan9303_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 912, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to setup port tagging %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lan9303_setup._entry_ptr.44 = internal global ptr @lan9303_setup._entry.42, section ".printk_index", align 4
@lan9303_setup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.5, i32 916, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to separate ports %d\0A\00", [35 x i8] zeroinitializer }, align 32
@lan9303_setup._entry_ptr.47 = internal global ptr @lan9303_setup._entry.45, section ".printk_index", align 4
@lan9303_setup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.5, i32 920, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to re-enable switching %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lan9303_setup._entry_ptr.50 = internal global ptr @lan9303_setup._entry.48, section ".printk_index", align 4
@lan9303_setup._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.5, i32 929, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup IGMP trap %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lan9303_setup._entry_ptr.53 = internal global ptr @lan9303_setup._entry.51, section ".printk_index", align 4
@lan9303_write_switch_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 390, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write csr data reg: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lan9303_write_switch_reg\00", [39 x i8] zeroinitializer }, align 32
@lan9303_write_switch_reg._entry_ptr = internal global ptr @lan9303_write_switch_reg._entry, section ".printk_index", align 4
@lan9303_write_switch_reg._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.5, i32 398, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write csr command reg: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lan9303_write_switch_reg._entry_ptr.58 = internal global ptr @lan9303_write_switch_reg._entry.56, section ".printk_index", align 4
@eth_reserved_addr_base = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\80\C2\00\00\00", [26 x i8] zeroinitializer }, align 32
@lan9303_alr_set_entry.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lan9303_alr_set_entry\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(%pM, %d)\0A\00", [19 x i8] zeroinitializer }, align 32
@portmap_2_alrport = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 0, i32 1, i32 4, i32 2, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@lan9303_read_switch_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.61, ptr @.str.5, i32 425, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lan9303_read_switch_reg\00", [40 x i8] zeroinitializer }, align 32
@lan9303_read_switch_reg._entry_ptr = internal global ptr @lan9303_read_switch_reg._entry, section ".printk_index", align 4
@lan9303_read_switch_reg._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.5, i32 435, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read csr data reg: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lan9303_read_switch_reg._entry_ptr.64 = internal global ptr @lan9303_read_switch_reg._entry.62, section ".printk_index", align 4
@lan9303_adjust_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 1066, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported speed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lan9303_adjust_link\00", [44 x i8] zeroinitializer }, align 32
@lan9303_adjust_link._entry_ptr = internal global ptr @lan9303_adjust_link._entry, section ".printk_index", align 4
@lan9303_mib = internal constant { [37 x %struct.lan9303_mib_desc], [88 x i8] } { [37 x %struct.lan9303_mib_desc] [%struct.lan9303_mib_desc { i32 1051, ptr @.str.67 }, %struct.lan9303_mib_desc { i32 1052, ptr @.str.68 }, %struct.lan9303_mib_desc { i32 1050, ptr @.str.69 }, %struct.lan9303_mib_desc { i32 1048, ptr @.str.70 }, %struct.lan9303_mib_desc { i32 1049, ptr @.str.71 }, %struct.lan9303_mib_desc { i32 1055, ptr @.str.72 }, %struct.lan9303_mib_desc { i32 1054, ptr @.str.73 }, %struct.lan9303_mib_desc { i32 1053, ptr @.str.74 }, %struct.lan9303_mib_desc { i32 1041, ptr @.str.75 }, %struct.lan9303_mib_desc { i32 1042, ptr @.str.76 }, %struct.lan9303_mib_desc { i32 1043, ptr @.str.77 }, %struct.lan9303_mib_desc { i32 1044, ptr @.str.78 }, %struct.lan9303_mib_desc { i32 1045, ptr @.str.79 }, %struct.lan9303_mib_desc { i32 1046, ptr @.str.80 }, %struct.lan9303_mib_desc { i32 1056, ptr @.str.81 }, %struct.lan9303_mib_desc { i32 1058, ptr @.str.82 }, %struct.lan9303_mib_desc { i32 1059, ptr @.str.83 }, %struct.lan9303_mib_desc { i32 1047, ptr @.str.84 }, %struct.lan9303_mib_desc { i32 1114, ptr @.str.85 }, %struct.lan9303_mib_desc { i32 1117, ptr @.str.86 }, %struct.lan9303_mib_desc { i32 1106, ptr @.str.87 }, %struct.lan9303_mib_desc { i32 1118, ptr @.str.88 }, %struct.lan9303_mib_desc { i32 1040, ptr @.str.89 }, %struct.lan9303_mib_desc { i32 1108, ptr @.str.90 }, %struct.lan9303_mib_desc { i32 1109, ptr @.str.91 }, %struct.lan9303_mib_desc { i32 1110, ptr @.str.92 }, %struct.lan9303_mib_desc { i32 1111, ptr @.str.93 }, %struct.lan9303_mib_desc { i32 1112, ptr @.str.94 }, %struct.lan9303_mib_desc { i32 1113, ptr @.str.95 }, %struct.lan9303_mib_desc { i32 1116, ptr @.str.96 }, %struct.lan9303_mib_desc { i32 1107, ptr @.str.97 }, %struct.lan9303_mib_desc { i32 1123, ptr @.str.98 }, %struct.lan9303_mib_desc { i32 1122, ptr @.str.99 }, %struct.lan9303_mib_desc { i32 1121, ptr @.str.100 }, %struct.lan9303_mib_desc { i32 1120, ptr @.str.101 }, %struct.lan9303_mib_desc { i32 1105, ptr @.str.102 }, %struct.lan9303_mib_desc { i32 1119, ptr @.str.103 }], [88 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxBroad\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxPause\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxMulti\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RxOk\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxCrcErr\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxAlignErr\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxJabber\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxFragment\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rx64Byte\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx128Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx256Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx512Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rx1024Byte\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxMaxByte\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxByteCnt\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxSymbolCnt\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RxCfs\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxOverFlow\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxShort\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxBroad\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxPause\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxMulti\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxUnderRun\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Tx64Byte\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx128Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx256Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx512Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tx1024Byte\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxMaxByte\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxByteCnt\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TxOk\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxCollision\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxMultiCol\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxSingleCol\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxExcCol\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxDefer\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxLateCol\00", [22 x i8] zeroinitializer }, align 32
@lan9303_get_ethtool_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 1008, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Reading status port %d reg %u failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lan9303_get_ethtool_stats\00", [38 x i8] zeroinitializer }, align 32
@lan9303_get_ethtool_stats._entry_ptr = internal global ptr @lan9303_get_ethtool_stats._entry, section ".printk_index", align 4
@lan9303_port_bridge_join.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.106, ptr @.str.5, ptr @.str.107, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lan9303_port_bridge_join\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(port %d)\0A\00", [19 x i8] zeroinitializer }, align 32
@lan9303_port_bridge_leave.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.108, ptr @.str.5, ptr @.str.107, i8 1, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lan9303_port_bridge_leave\00", [38 x i8] zeroinitializer }, align 32
@lan9303_port_stp_state_set.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.109, ptr @.str.5, ptr @.str.110, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lan9303_port_stp_state_set\00", [37 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(port %d, state %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@lan9303_port_stp_state_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.5, i32 1165, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown stp state: port %d, state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@lan9303_port_stp_state_set._entry_ptr = internal global ptr @lan9303_port_stp_state_set._entry, section ".printk_index", align 4
@lan9303_port_fast_age.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.112, ptr @.str.5, ptr @.str.113, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lan9303_port_fast_age\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@alrport_2_portmap = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 4, i32 0, i32 3, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@lan9303_port_fdb_add.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.114, ptr @.str.5, ptr @.str.115, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan9303_port_fdb_add\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(%d, %pM, %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@lan9303_port_fdb_del.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.116, ptr @.str.5, ptr @.str.115, i8 1, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan9303_port_fdb_del\00", [43 x i8] zeroinitializer }, align 32
@lan9303_port_fdb_dump.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.117, ptr @.str.5, ptr @.str.113, i8 1, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lan9303_port_fdb_dump\00", [42 x i8] zeroinitializer }, align 32
@lan9303_port_mdb_add.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.118, ptr @.str.5, ptr @.str.115, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan9303_port_mdb_add\00", [43 x i8] zeroinitializer }, align 32
@lan9303_port_mdb_prepare.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.119, ptr @.str.5, ptr @.str.115, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lan9303_port_mdb_prepare\00", [39 x i8] zeroinitializer }, align 32
@lan9303_port_mdb_del.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.120, ptr @.str.5, ptr @.str.115, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan9303_port_mdb_del\00", [43 x i8] zeroinitializer }, align 32
@switch.table.lan9303_port_stp_state_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 1, i32 2, i32 0, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"lan9303_valid_regs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 186, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"lan9303_reserved_ranges\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 202, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant [21 x i8] c"lan9303_register_set\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 215, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"lan9303_indirect_phy_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 361, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1349, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1350, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1364, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1378, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 254, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1319, i32 56 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1325, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1332, i32 28 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1335, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 852, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 855, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 862, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 876, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 878, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 882, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 486, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 492, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"lan9303_switch_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1276, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 906, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 912, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 916, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 920, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 929, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 390, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 397, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [23 x i8] c"eth_reserved_addr_base\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [31 x i8] c"../include/linux/etherdevice.h\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 70, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 657, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [18 x i8] c"portmap_2_alrport\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 500, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 424, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 435, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1066, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"lan9303_mib\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 939, i32 38 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 940, i32 51 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 941, i32 50 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 942, i32 51 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 943, i32 50 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 944, i32 51 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 945, i32 50 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 946, i32 49 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 947, i32 49 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 948, i32 47 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 949, i32 48 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 950, i32 48 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 951, i32 48 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 952, i32 49 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 953, i32 48 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 954, i32 51 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 955, i32 50 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 956, i32 51 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 957, i32 51 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 958, i32 51 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 959, i32 51 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 960, i32 50 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 961, i32 51 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 962, i32 51 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 963, i32 47 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 964, i32 48 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 965, i32 48 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 966, i32 48 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 967, i32 49 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 968, i32 48 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 969, i32 51 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 970, i32 50 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 971, i32 53 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 972, i32 53 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 973, i32 53 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 974, i32 50 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 975, i32 50 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 976, i32 48 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1007, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1118, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1132, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1145, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1164, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1186, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [18 x i8] c"alrport_2_portmap\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 499, i32 18 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1195, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1208, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1226, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1257, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1235, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.517 = private constant [34 x i8] c"../drivers/net/dsa/lan9303-core.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1267, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [40 x i8] c"switch.table.lan9303_port_stp_state_set\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_author514, ptr @__UNIQUE_ID_description515, ptr @__UNIQUE_ID_file516, ptr @__UNIQUE_ID_license517, ptr @__ksymtab_lan9303_indirect_phy_ops, ptr @__ksymtab_lan9303_probe, ptr @__ksymtab_lan9303_register_set, ptr @__ksymtab_lan9303_remove, ptr @__ksymtab_lan9303_shutdown, ptr @lan9303_adjust_link._entry, ptr @lan9303_adjust_link._entry_ptr, ptr @lan9303_check_device._entry, ptr @lan9303_check_device._entry.22, ptr @lan9303_check_device._entry.25, ptr @lan9303_check_device._entry.28, ptr @lan9303_check_device._entry.32, ptr @lan9303_check_device._entry_ptr, ptr @lan9303_check_device._entry_ptr.24, ptr @lan9303_check_device._entry_ptr.27, ptr @lan9303_check_device._entry_ptr.31, ptr @lan9303_check_device._entry_ptr.34, ptr @lan9303_detect_phy_setup._entry, ptr @lan9303_detect_phy_setup._entry_ptr, ptr @lan9303_get_ethtool_stats._entry, ptr @lan9303_get_ethtool_stats._entry_ptr, ptr @lan9303_port_stp_state_set._entry, ptr @lan9303_port_stp_state_set._entry_ptr, ptr @lan9303_read_switch_reg._entry, ptr @lan9303_read_switch_reg._entry.62, ptr @lan9303_read_switch_reg._entry_ptr, ptr @lan9303_read_switch_reg._entry_ptr.64, ptr @lan9303_read_wait._entry, ptr @lan9303_read_wait._entry_ptr, ptr @lan9303_remove._entry, ptr @lan9303_remove._entry_ptr, ptr @lan9303_setup._entry, ptr @lan9303_setup._entry.42, ptr @lan9303_setup._entry.45, ptr @lan9303_setup._entry.48, ptr @lan9303_setup._entry.51, ptr @lan9303_setup._entry_ptr, ptr @lan9303_setup._entry_ptr.44, ptr @lan9303_setup._entry_ptr.47, ptr @lan9303_setup._entry_ptr.50, ptr @lan9303_setup._entry_ptr.53, ptr @lan9303_write_switch_reg._entry, ptr @lan9303_write_switch_reg._entry.56, ptr @lan9303_write_switch_reg._entry_ptr, ptr @lan9303_write_switch_reg._entry_ptr.58, ptr @lan9303_valid_regs, ptr @lan9303_reserved_ranges, ptr @lan9303_register_set, ptr @lan9303_indirect_phy_ops, ptr @lan9303_probe.__key, ptr @.str, ptr @lan9303_probe.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @lan9303_switch_ops, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @eth_reserved_addr_base, ptr @.str.59, ptr @.str.60, ptr @portmap_2_alrport, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @lan9303_mib, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @alrport_2_portmap, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @switch.table.lan9303_port_stp_state_set], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_valid_regs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_reserved_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_register_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_indirect_phy_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_read_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_check_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_check_device._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_check_device._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_check_device._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_check_device._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_detect_phy_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_setup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_setup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_setup._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_write_switch_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_write_switch_reg._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_reserved_addr_base to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portmap_2_alrport to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_read_switch_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_read_switch_reg._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_adjust_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mib to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_get_ethtool_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_port_stp_state_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alrport_2_portmap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lan9303_port_stp_state_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_indirect_phy_read(ptr noundef %chip, i32 noundef %addr, i32 noundef %regnum) #0 align 64 {
entry:
  %reg.i.i30 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %and = shl i32 %addr, 11
  %shl = and i32 %and, 63488
  %and1 = shl i32 %regnum, 6
  %shl2 = and i32 %and1, 1984
  %or = or i32 %shl2, %shl
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %val, align 4
  %indirect_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %indirect_mutex, i32 noundef 0) #7
  %regmap.i.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.015.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %1 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !279
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call fastcc i32 @lan9303_read(ptr noundef %3, i32 noundef 42, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lan9303_indirect_phy_wait_for_completion.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %for.inc.i.i.on_error_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.on_error_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

lan9303_indirect_phy_wait_for_completion.exit:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 42, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  br label %on_error

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %call3 = call i32 @regmap_write(ptr noundef %9, i32 noundef 42, i32 noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.for.body.i.i35_crit_edge, label %if.end.on_error_crit_edge

if.end.on_error_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

if.end.for.body.i.i35_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i35

for.body.i.i35:                                   ; preds = %for.inc.i.i43.for.body.i.i35_crit_edge, %if.end.for.body.i.i35_crit_edge
  %i.015.i.i32 = phi i32 [ %inc.i.i41, %for.inc.i.i43.for.body.i.i35_crit_edge ], [ 0, %if.end.for.body.i.i35_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i30) #7
  %12 = ptrtoint ptr %reg.i.i30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg.i.i30, align 4, !annotation !279
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i33 = call fastcc i32 @lan9303_read(ptr noundef %14, i32 noundef 42, ptr noundef nonnull %reg.i.i30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool.not.i.i34 = icmp eq i32 %call.i.i33, 0
  br i1 %tobool.not.i.i34, label %if.end.i.i39, label %lan9303_indirect_phy_wait_for_completion.exit45

if.end.i.i39:                                     ; preds = %for.body.i.i35
  %15 = ptrtoint ptr %reg.i.i30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i.i30, align 4
  %and.i.i37 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool1.not.i.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool1.not.i.i38, label %if.end10, label %for.inc.i.i43

for.inc.i.i43:                                    ; preds = %if.end.i.i39
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i30) #7
  %inc.i.i41 = add nuw nsw i32 %i.015.i.i32, 1
  %exitcond.not.i.i42 = icmp eq i32 %inc.i.i41, 25
  br i1 %exitcond.not.i.i42, label %for.inc.i.i43.on_error_crit_edge, label %for.inc.i.i43.for.body.i.i35_crit_edge

for.inc.i.i43.for.body.i.i35_crit_edge:           ; preds = %for.inc.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i35

for.inc.i.i43.on_error_crit_edge:                 ; preds = %for.inc.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

lan9303_indirect_phy_wait_for_completion.exit45:  ; preds = %for.body.i.i35
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 42, i32 noundef %call.i.i33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i30) #7
  br label %on_error

if.end10:                                         ; preds = %if.end.i.i39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i30) #7
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call12 = call fastcc i32 @lan9303_read(ptr noundef %20, i32 noundef 41, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.on_error_crit_edge

if.end10.on_error_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %indirect_mutex) #7
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and17 = and i32 %22, 65535
  br label %cleanup

on_error:                                         ; preds = %if.end10.on_error_crit_edge, %lan9303_indirect_phy_wait_for_completion.exit45, %for.inc.i.i43.on_error_crit_edge, %if.end.on_error_crit_edge, %lan9303_indirect_phy_wait_for_completion.exit, %for.inc.i.i.on_error_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %lan9303_indirect_phy_wait_for_completion.exit ], [ %call3, %if.end.on_error_crit_edge ], [ %call.i.i33, %lan9303_indirect_phy_wait_for_completion.exit45 ], [ %call12, %if.end10.on_error_crit_edge ], [ -110, %for.inc.i.i43.on_error_crit_edge ], [ -110, %for.inc.i.i.on_error_crit_edge ]
  call void @mutex_unlock(ptr noundef %indirect_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end15
  %retval.0 = phi i32 [ %ret.0, %on_error ], [ %and17, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_indirect_phy_write(ptr noundef %chip, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #0 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %addr, 11
  %shl = and i32 %and, 63488
  %and1 = shl i32 %regnum, 6
  %shl2 = and i32 %and1, 1984
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 2
  %indirect_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %indirect_mutex, i32 noundef 0) #7
  %regmap.i.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.015.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !279
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call fastcc i32 @lan9303_read(ptr noundef %2, i32 noundef 42, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lan9303_indirect_phy_wait_for_completion.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %for.inc.i.i.on_error_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.on_error_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

lan9303_indirect_phy_wait_for_completion.exit:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 42, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  br label %on_error

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %conv = zext i16 %val to i32
  %call4 = call i32 @regmap_write(ptr noundef %8, i32 noundef 41, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.on_error_crit_edge

if.end.on_error_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call9 = call i32 @regmap_write(ptr noundef %10, i32 noundef 42, i32 noundef %or3) #7
  br label %on_error

on_error:                                         ; preds = %if.end7, %if.end.on_error_crit_edge, %lan9303_indirect_phy_wait_for_completion.exit, %for.inc.i.i.on_error_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %lan9303_indirect_phy_wait_for_completion.exit ], [ %call4, %if.end.on_error_crit_edge ], [ %call9, %if.end7 ], [ -110, %for.inc.i.i.on_error_crit_edge ]
  call void @mutex_unlock(ptr noundef %indirect_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan9303_probe(ptr noundef %chip, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %indirect_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %indirect_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @lan9303_probe.__key) #7
  %alr_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %alr_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @lan9303_probe.__key.1) #7
  %call = tail call fastcc i32 @lan9303_probe_reset_gpio(ptr noundef %chip, ptr noundef %np)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpio.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.lan9303_handle_reset.exit_crit_edge, label %if.end.i

if.end.lan9303_handle_reset.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_handle_reset.exit

if.end.i:                                         ; preds = %if.end
  %reset_duration.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %reset_duration.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset_duration.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef %3) #7
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #7
  br label %lan9303_handle_reset.exit

lan9303_handle_reset.exit:                        ; preds = %if.end3.i, %if.end.lan9303_handle_reset.exit_crit_edge
  %call4 = tail call fastcc i32 @lan9303_check_device(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %lan9303_handle_reset.exit.cleanup_crit_edge

lan9303_handle_reset.exit.cleanup_crit_edge:      ; preds = %lan9303_handle_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lan9303_handle_reset.exit
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 84, i32 noundef 3520) #7
  %ds.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %ds.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %ds.i, align 4
  %tobool.not.i33 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i33, label %if.end7.do.body11_crit_edge, label %lan9303_register_switch.exit

if.end7.do.body11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

lan9303_register_switch.exit:                     ; preds = %if.end7
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call.i.i, align 4
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %call.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %num_ports.i, align 4
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %call.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %chip, ptr %priv.i, align 4
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %call.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lan9303_switch_ops, ptr %ops.i, align 4
  %phy_addr_base.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 5
  %15 = ptrtoint ptr %phy_addr_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_addr_base.i, align 4
  %shl.neg.i = shl nsw i32 -1, %16
  %sub9.i = sub i32 29, %16
  %shr.i = lshr i32 -1, %sub9.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %phys_mii_mask.i = getelementptr inbounds %struct.dsa_switch, ptr %call.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %phys_mii_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %phys_mii_mask.i, align 4
  %call13.i = tail call i32 @dsa_register_switch(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool9.not = icmp eq i32 %call13.i, 0
  br i1 %tobool9.not, label %lan9303_register_switch.exit.cleanup_crit_edge, label %lan9303_register_switch.exit.do.body11_crit_edge

lan9303_register_switch.exit.do.body11_crit_edge: ; preds = %lan9303_register_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

lan9303_register_switch.exit.cleanup_crit_edge:   ; preds = %lan9303_register_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11:                                        ; preds = %lan9303_register_switch.exit.do.body11_crit_edge, %if.end7.do.body11_crit_edge
  %retval.0.i3538 = phi i32 [ %call13.i, %lan9303_register_switch.exit.do.body11_crit_edge ], [ -12, %if.end7.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_probe.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_probe, %if.then16)) #7
          to label %cleanup [label %if.then16], !srcloc !280

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_probe.__UNIQUE_ID_ddebug513, ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i3538) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body11, %lan9303_register_switch.exit.cleanup_crit_edge, %lan9303_handle_reset.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %lan9303_handle_reset.exit.cleanup_crit_edge ], [ %retval.0.i3538, %if.then16 ], [ 0, %lan9303_register_switch.exit.cleanup_crit_edge ], [ %retval.0.i3538, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan9303_probe_reset_gpio(ptr noundef %chip, ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call to i32
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_probe_reset_gpio, %if.then11)) #7
          to label %return [label %if.then11], !srcloc !280

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug511, ptr noundef %5, ptr noundef nonnull @.str.16) #7
  br label %return

if.end14:                                         ; preds = %if.end
  %reset_duration = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %reset_duration to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 200, ptr %reset_duration, align 4
  %tobool15.not = icmp eq ptr %np, null
  br i1 %tobool15.not, label %do.body19, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np, ptr noundef nonnull @.str.17, ptr noundef %reset_duration, i32 noundef 1, i32 noundef 0) #7
  br label %if.end35

do.body19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_probe_reset_gpio, %if.then31)) #7
          to label %if.end35 [label %if.then31], !srcloc !280

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug512, ptr noundef %8, ptr noundef nonnull @.str.18) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %do.body19, %if.then16
  %9 = ptrtoint ptr %reset_duration to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %10)
  %cmp = icmp ugt i32 %10, 1000
  br i1 %cmp, label %if.then37, label %if.end35.return_crit_edge

if.end35.return_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %reset_duration to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000, ptr %reset_duration, align 4
  br label %return

return:                                           ; preds = %if.then37, %if.end35.return_crit_edge, %if.then11, %do.body, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.then11 ], [ 0, %if.then37 ], [ 0, %if.end35.return_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan9303_check_device(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !279
  %regmap = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call fastcc i32 @lan9303_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13, label %do.end

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef %call) #10
  %reset_gpio = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %do.body3, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_check_device.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_check_device, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !280

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_check_device.__UNIQUE_ID_ddebug500, ptr noundef %8, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end13:                                         ; preds = %entry
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %shr = lshr i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 37635, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 37635
  br i1 %cmp.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef %shr) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call.i.i.i = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 2049, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lan9303_disable_processing_port.exit.i, label %if.end20.do.end26_crit_edge

if.end20.do.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

for.cond.i:                                       ; preds = %lan9303_disable_processing_port.exit.i
  %call.i.i.1.i = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 3073, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %lan9303_disable_processing.exit, label %for.cond.i.do.end26_crit_edge

for.cond.i.do.end26_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

lan9303_disable_processing_port.exit.i:           ; preds = %if.end20
  %call.i7.i.i = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 2112, i32 noundef 86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.not.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %lan9303_disable_processing_port.exit.i.do.end26_crit_edge

lan9303_disable_processing_port.exit.i.do.end26_crit_edge: ; preds = %lan9303_disable_processing_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

lan9303_disable_processing.exit:                  ; preds = %for.cond.i
  %call.i7.i.1.i = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 3136, i32 noundef 86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.1.i)
  %tobool22.not = icmp eq i32 %call.i7.i.1.i, 0
  br i1 %tobool22.not, label %lan9303_disable_processing.exit.do.end31_crit_edge, label %lan9303_disable_processing.exit.do.end26_crit_edge

lan9303_disable_processing.exit.do.end26_crit_edge: ; preds = %lan9303_disable_processing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

lan9303_disable_processing.exit.do.end31_crit_edge: ; preds = %lan9303_disable_processing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end26:                                         ; preds = %lan9303_disable_processing.exit.do.end26_crit_edge, %lan9303_disable_processing_port.exit.i.do.end26_crit_edge, %for.cond.i.do.end26_crit_edge, %if.end20.do.end26_crit_edge
  %retval.2.i62 = phi i32 [ %call.i7.i.1.i, %lan9303_disable_processing.exit.do.end26_crit_edge ], [ %call.i.i.1.i, %for.cond.i.do.end26_crit_edge ], [ %call.i.i.i, %if.end20.do.end26_crit_edge ], [ %call.i7.i.i, %lan9303_disable_processing_port.exit.i.do.end26_crit_edge ]
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %retval.2.i62) #10
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %lan9303_disable_processing.exit.do.end31_crit_edge
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %and = and i32 %18, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.29, i32 noundef %and) #10
  %ops.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 9
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i = call i32 %22(ptr noundef %chip, i32 noundef 3, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end38, label %if.end.i

if.end.i:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i)
  %cmp2.i = icmp ne i32 %call.i, 65535
  %narrow.i = and i1 %cmp1.not.i, %cmp2.i
  %23 = zext i1 %narrow.i to i32
  %phy_addr_base.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 5
  %24 = ptrtoint ptr %phy_addr_base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %phy_addr_base.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_detect_phy_setup.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_check_device, %lan9303_detect_phy_setup.exit.thread)) #7
          to label %cleanup [label %lan9303_detect_phy_setup.exit.thread], !srcloc !280

lan9303_detect_phy_setup.exit.thread:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %phy_addr_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_addr_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i = icmp eq i32 %28, 0
  %cond.i = select i1 %tobool10.not.i, ptr @.str.39, ptr @.str.38
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_detect_phy_setup.__UNIQUE_ID_ddebug497, ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond.i) #7
  br label %cleanup

do.end38:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.35, i32 noundef %call.i) #10
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.33, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %lan9303_detect_phy_setup.exit.thread, %if.end.i, %do.end17, %if.then8, %do.body3, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end17 ], [ %call.i, %do.end38 ], [ %call, %if.then8 ], [ %call, %do.end.cleanup_crit_edge ], [ %call, %do.body3 ], [ 0, %lan9303_detect_phy_setup.exit.thread ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan9303_remove(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 2049, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lan9303_disable_processing_port.exit.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.i:                                       ; preds = %lan9303_disable_processing_port.exit.i
  %call.i.i.1.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 3073, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %lan9303_disable_processing.exit, label %for.cond.i.do.end_crit_edge

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lan9303_disable_processing_port.exit.i:           ; preds = %entry
  %call.i7.i.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 2112, i32 noundef 86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool.not.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %lan9303_disable_processing_port.exit.i.do.end_crit_edge

lan9303_disable_processing_port.exit.i.do.end_crit_edge: ; preds = %lan9303_disable_processing_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lan9303_disable_processing.exit:                  ; preds = %for.cond.i
  %call.i7.i.1.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 3136, i32 noundef 86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.1.i)
  %cmp.not = icmp eq i32 %call.i7.i.1.i, 0
  br i1 %cmp.not, label %lan9303_disable_processing.exit.if.end_crit_edge, label %lan9303_disable_processing.exit.do.end_crit_edge

lan9303_disable_processing.exit.do.end_crit_edge: ; preds = %lan9303_disable_processing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lan9303_disable_processing.exit.if.end_crit_edge: ; preds = %lan9303_disable_processing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %lan9303_disable_processing.exit.do.end_crit_edge, %lan9303_disable_processing_port.exit.i.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.7) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %lan9303_disable_processing.exit.if.end_crit_edge
  %ds = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %3) #7
  %reset_gpio = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_unexport(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_unexport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan9303_shutdown(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan9303_read(ptr noundef %regmap, i32 noundef %offset, ptr noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef %offset, ptr noundef %reg) #7
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup.loopexit8_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 -11, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup.loopexit8_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit8

if.end3:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 500) #7
  %call.1 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef %offset, ptr noundef %reg) #7
  %1 = zext i32 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %call.1, label %if.end3.cleanup.loopexit8_crit_edge [
    i32 0, label %if.end3.cleanup_crit_edge
    i32 -11, label %if.end3.1
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.cleanup.loopexit8_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit8

if.end3.1:                                        ; preds = %if.end3
  tail call void @msleep(i32 noundef 500) #7
  %call.2 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef %offset, ptr noundef %reg) #7
  %2 = zext i32 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %call.2, label %if.end3.1.cleanup.loopexit8_crit_edge [
    i32 0, label %if.end3.1.cleanup_crit_edge
    i32 -11, label %if.end3.2
  ]

if.end3.1.cleanup_crit_edge:                      ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.1.cleanup.loopexit8_crit_edge:            ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit8

if.end3.2:                                        ; preds = %if.end3.1
  tail call void @msleep(i32 noundef 500) #7
  %call.3 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef %offset, ptr noundef %reg) #7
  %3 = zext i32 %call.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call.3, label %if.end3.2.cleanup.loopexit8_crit_edge [
    i32 0, label %if.end3.2.cleanup_crit_edge
    i32 -11, label %if.end3.3
  ]

if.end3.2.cleanup_crit_edge:                      ; preds = %if.end3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.2.cleanup.loopexit8_crit_edge:            ; preds = %if.end3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit8

if.end3.3:                                        ; preds = %if.end3.2
  tail call void @msleep(i32 noundef 500) #7
  %call.4 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef %offset, ptr noundef %reg) #7
  %4 = zext i32 %call.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call.4, label %if.end3.3.cleanup.loopexit8_crit_edge [
    i32 0, label %if.end3.3.cleanup_crit_edge
    i32 -11, label %if.end3.4
  ]

if.end3.3.cleanup_crit_edge:                      ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.3.cleanup.loopexit8_crit_edge:            ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit8

if.end3.4:                                        ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 500) #7
  br label %cleanup.loopexit8

cleanup.loopexit8:                                ; preds = %if.end3.4, %if.end3.3.cleanup.loopexit8_crit_edge, %if.end3.2.cleanup.loopexit8_crit_edge, %if.end3.1.cleanup.loopexit8_crit_edge, %if.end3.cleanup.loopexit8_crit_edge, %entry.cleanup.loopexit8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit8, %if.end3.3.cleanup_crit_edge, %if.end3.2.cleanup_crit_edge, %if.end3.1.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %cleanup.loopexit8 ], [ %call.4, %if.end3.3.cleanup_crit_edge ], [ %call.3, %if.end3.2.cleanup_crit_edge ], [ %call.2, %if.end3.1.cleanup_crit_edge ], [ %call.1, %if.end3.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan9303_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_setup(ptr noundef readonly %ds) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_cpu_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_cpu_port.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.i.i = icmp eq i32 %8, 0
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %entry.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end:                                           ; preds = %dsa_is_cpu_port.exit
  %call.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6215, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lan9303_setup_tagging.exit, label %if.end.do.end5_crit_edge

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

lan9303_setup_tagging.exit:                       ; preds = %if.end
  %call1.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 7180, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %lan9303_setup_tagging.exit.if.end7_crit_edge, label %lan9303_setup_tagging.exit.do.end5_crit_edge

lan9303_setup_tagging.exit.do.end5_crit_edge:     ; preds = %lan9303_setup_tagging.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

lan9303_setup_tagging.exit.if.end7_crit_edge:     ; preds = %lan9303_setup_tagging.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end5:                                          ; preds = %lan9303_setup_tagging.exit.do.end5_crit_edge, %if.end.do.end5_crit_edge
  %retval.0.i63 = phi i32 [ %call1.i, %lan9303_setup_tagging.exit.do.end5_crit_edge ], [ %call.i, %if.end.do.end5_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i63) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end5, %lan9303_setup_tagging.exit.if.end7_crit_edge
  tail call fastcc void @lan9303_alr_del_port(ptr noundef %1, ptr noundef nonnull @eth_reserved_addr_base, i32 noundef 0) #7
  %call1.i49 = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6214, i32 noundef 314) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %lan9303_separate_ports.exit, label %if.end7.do.end13_crit_edge

if.end7.do.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

lan9303_separate_ports.exit:                      ; preds = %if.end7
  %call2.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6211, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool9.not = icmp eq i32 %call2.i, 0
  br i1 %tobool9.not, label %lan9303_separate_ports.exit.if.end15_crit_edge, label %lan9303_separate_ports.exit.do.end13_crit_edge

lan9303_separate_ports.exit.do.end13_crit_edge:   ; preds = %lan9303_separate_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

lan9303_separate_ports.exit.if.end15_crit_edge:   ; preds = %lan9303_separate_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end13:                                         ; preds = %lan9303_separate_ports.exit.do.end13_crit_edge, %if.end7.do.end13_crit_edge
  %retval.0.i5266 = phi i32 [ %call2.i, %lan9303_separate_ports.exit.do.end13_crit_edge ], [ %call1.i49, %if.end7.do.end13_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i5266) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %lan9303_separate_ports.exit.if.end15_crit_edge
  %call.i.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 1025, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i53 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i53, label %lan9303_enable_processing_port.exit, label %if.end15.do.end21_crit_edge

if.end15.do.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

lan9303_enable_processing_port.exit:              ; preds = %if.end15
  %call.i7.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 1088, i32 noundef 87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool17.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool17.not, label %lan9303_enable_processing_port.exit.if.end23_crit_edge, label %lan9303_enable_processing_port.exit.do.end21_crit_edge

lan9303_enable_processing_port.exit.do.end21_crit_edge: ; preds = %lan9303_enable_processing_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

lan9303_enable_processing_port.exit.if.end23_crit_edge: ; preds = %lan9303_enable_processing_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end21:                                         ; preds = %lan9303_enable_processing_port.exit.do.end21_crit_edge, %if.end15.do.end21_crit_edge
  %retval.0.i5569 = phi i32 [ %call.i7.i, %lan9303_enable_processing_port.exit.do.end21_crit_edge ], [ %call.i.i, %if.end15.do.end21_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.49, i32 noundef %retval.0.i5569) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %lan9303_enable_processing_port.exit.if.end23_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %reg.i, align 4, !annotation !279
  %call.i56 = call fastcc i32 @lan9303_read_switch_reg(ptr noundef %1, i16 noundef zeroext 6208, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %lan9303_write_switch_reg_mask.exit, label %lan9303_write_switch_reg_mask.exit.thread

lan9303_write_switch_reg_mask.exit.thread:        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %do.end29

lan9303_write_switch_reg_mask.exit:               ; preds = %if.end23
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %22, -7297
  %or.i = or i32 %and.i, 1152
  store i32 %or.i, ptr %reg.i, align 4
  %call1.i58 = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6208, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool25.not = icmp eq i32 %call1.i58, 0
  br i1 %tobool25.not, label %lan9303_write_switch_reg_mask.exit.cleanup_crit_edge, label %lan9303_write_switch_reg_mask.exit.do.end29_crit_edge

lan9303_write_switch_reg_mask.exit.do.end29_crit_edge: ; preds = %lan9303_write_switch_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

lan9303_write_switch_reg_mask.exit.cleanup_crit_edge: ; preds = %lan9303_write_switch_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %lan9303_write_switch_reg_mask.exit.do.end29_crit_edge, %lan9303_write_switch_reg_mask.exit.thread
  %retval.0.i6072 = phi i32 [ %call.i56, %lan9303_write_switch_reg_mask.exit.thread ], [ %call1.i58, %lan9303_write_switch_reg_mask.exit.do.end29_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i6072) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %lan9303_write_switch_reg_mask.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end29 ], [ 0, %lan9303_write_switch_reg_mask.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_phy_read(ptr nocapture noundef readonly %ds, i32 noundef %phy, i32 noundef %regnum) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %phy_addr_base = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phy_addr_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_addr_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %phy)
  %cmp = icmp eq i32 %3, %phy
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !279
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %regnum)
  %cmp.i = icmp sgt i32 %regnum, 6
  br i1 %cmp.i, label %if.then.lan9303_virt_phy_reg_read.exit_crit_edge, label %if.end.i

if.then.lan9303_virt_phy_reg_read.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_virt_phy_reg_read.exit

if.end.i:                                         ; preds = %if.then
  %regmap.i = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %add.i = add nsw i32 %regnum, 112
  %call.i = call fastcc i32 @lan9303_read(ptr noundef %6, i32 noundef %add.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.lan9303_virt_phy_reg_read.exit_crit_edge

if.end.i.lan9303_virt_phy_reg_read.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_virt_phy_reg_read.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 65535
  br label %lan9303_virt_phy_reg_read.exit

lan9303_virt_phy_reg_read.exit:                   ; preds = %if.end2.i, %if.end.i.lan9303_virt_phy_reg_read.exit_crit_edge, %if.then.lan9303_virt_phy_reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i, %if.end2.i ], [ -22, %if.then.lan9303_virt_phy_reg_read.exit_crit_edge ], [ %call.i, %if.end.i.lan9303_virt_phy_reg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %phy)
  %cmp1 = icmp slt i32 %add, %phy
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call4 = tail call i32 %12(ptr noundef %1, i32 noundef %phy, i32 noundef %regnum) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %lan9303_virt_phy_reg_read.exit
  %retval.0 = phi i32 [ %retval.0.i, %lan9303_virt_phy_reg_read.exit ], [ %call4, %if.end3 ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_phy_write(ptr nocapture noundef readonly %ds, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %phy_addr_base = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phy_addr_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_addr_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %phy)
  %cmp = icmp eq i32 %3, %phy
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %regnum)
  %cmp.i = icmp sgt i32 %regnum, 6
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %add.i = add nsw i32 %regnum, 112
  %conv.i = zext i16 %val to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add.i, i32 noundef %conv.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %phy)
  %cmp1 = icmp slt i32 %add, %phy
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %phy_write = getelementptr inbounds %struct.lan9303_phy_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %phy_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_write, align 4
  %call4 = tail call i32 %9(ptr noundef %1, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %val) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -19, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_adjust_link(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %ctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctl) #7
  %is_pseudo_fixed_link.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %2 = ptrtoint ptr %is_pseudo_fixed_link.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %is_pseudo_fixed_link.i, align 8
  %3 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_addr_base.i = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %phy_addr_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_addr_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %port)
  %cmp.i = icmp eq i32 %5, %port
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !279
  %regmap.i.i = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call fastcc i32 @lan9303_read(ptr noundef %8, i32 noundef 112, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.i.i, label %if.then.i.lan9303_virt_phy_reg_read.exit.i_crit_edge

if.then.i.lan9303_virt_phy_reg_read.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_virt_phy_reg_read.exit.i

if.end2.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %10, 65535
  br label %lan9303_virt_phy_reg_read.exit.i

lan9303_virt_phy_reg_read.exit.i:                 ; preds = %if.end2.i.i, %if.then.i.lan9303_virt_phy_reg_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %and.i.i, %if.end2.i.i ], [ %call.i.i, %if.then.i.lan9303_virt_phy_reg_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %lan9303_phy_read.exit

if.end.i:                                         ; preds = %if.end
  %add.i = add i32 %5, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %port)
  %cmp1.i = icmp slt i32 %add.i, %port
  br i1 %cmp1.i, label %if.end.i.lan9303_phy_read.exit_crit_edge, label %if.end3.i

if.end.i.lan9303_phy_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_phy_read.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call4.i = tail call i32 %14(ptr noundef %1, i32 noundef %port, i32 noundef 0) #7
  br label %lan9303_phy_read.exit

lan9303_phy_read.exit:                            ; preds = %if.end3.i, %if.end.i.lan9303_phy_read.exit_crit_edge, %lan9303_virt_phy_reg_read.exit.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %lan9303_virt_phy_reg_read.exit.i ], [ %call4.i, %if.end3.i ], [ -19, %if.end.i.lan9303_phy_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -4097
  %15 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %ctl, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %17, label %do.end [
    i32 100, label %if.then2
    i32 10, label %if.then5
  ]

if.then2:                                         ; preds = %lan9303_phy_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 8192
  %19 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %ctl, align 4
  br label %if.end10

if.then5:                                         ; preds = %lan9303_phy_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and6 = and i32 %retval.0.i, -12289
  %20 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and6, ptr %ctl, align 4
  br label %if.end10

do.end:                                           ; preds = %lan9303_phy_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.65, i32 noundef %17) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then5, %if.then2
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %23 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp11 = icmp eq i32 %24, 1
  %25 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctl, align 4
  %and15 = and i32 %26, -257
  %masksel = select i1 %cmp11, i32 256, i32 0
  %storemerge = or i32 %and15, %masksel
  store i32 %storemerge, ptr %ctl, align 4
  %conv = trunc i32 %storemerge to i16
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %phy_addr_base.i39 = getelementptr inbounds %struct.lan9303, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %phy_addr_base.i39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phy_addr_base.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %port)
  %cmp.i40 = icmp eq i32 %30, %port
  br i1 %cmp.i40, label %if.then.i41, label %if.end.i46

if.then.i41:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i.i42 = getelementptr inbounds %struct.lan9303, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i.i42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i.i42, align 4
  %conv.i.i = and i32 %storemerge, 65535
  %call.i.i43 = call i32 @regmap_write(ptr noundef %32, i32 noundef 112, i32 noundef %conv.i.i) #7
  br label %lan9303_phy_write.exit

if.end.i46:                                       ; preds = %if.end10
  %add.i44 = add i32 %30, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i44, i32 %port)
  %cmp1.i45 = icmp slt i32 %add.i44, %port
  br i1 %cmp1.i45, label %if.end.i46.lan9303_phy_write.exit_crit_edge, label %if.end3.i49

if.end.i46.lan9303_phy_write.exit_crit_edge:      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_phy_write.exit

if.end3.i49:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i47 = getelementptr inbounds %struct.lan9303, ptr %28, i32 0, i32 9
  %33 = ptrtoint ptr %ops.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i47, align 4
  %phy_write.i = getelementptr inbounds %struct.lan9303_phy_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %phy_write.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_write.i, align 4
  %call4.i48 = call i32 %36(ptr noundef %28, i32 noundef %port, i32 noundef 0, i16 noundef zeroext %conv) #7
  br label %lan9303_phy_write.exit

lan9303_phy_write.exit:                           ; preds = %if.end3.i49, %if.end.i46.lan9303_phy_write.exit_crit_edge, %if.then.i41
  %37 = ptrtoint ptr %phy_addr_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phy_addr_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %port)
  %cmp18 = icmp eq i32 %38, %port
  br i1 %cmp18, label %if.then20, label %lan9303_phy_write.exit.cleanup_crit_edge

lan9303_phy_write.exit.cleanup_crit_edge:         ; preds = %lan9303_phy_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %lan9303_phy_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call21 = call fastcc i32 @lan9303_read(ptr noundef %40, i32 noundef 119, ptr noundef nonnull %ctl)
  %41 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctl, align 4
  %and22 = and i32 %42, -1025
  store i32 %and22, ptr %ctl, align 4
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_write(ptr noundef %44, i32 noundef 119, i32 noundef %and22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %lan9303_phy_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_get_strings(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %u.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %u.05, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %name = getelementptr [37 x %struct.lan9303_mib_desc], ptr @lan9303_mib, i32 0, i32 %u.05, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 32)
  %inc = add nuw nsw i32 %u.05, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %port.tr.i = trunc i32 %port to i16
  %2 = shl i16 %port.tr.i, 10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %u.011 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !279
  %arrayidx = getelementptr [37 x %struct.lan9303_mib_desc], ptr @lan9303_mib, i32 0, i32 %u.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  %conv1.i = add i16 %2, %conv
  %call.i = call fastcc i32 @lan9303_read_switch_reg(ptr noundef %1, i16 noundef zeroext %conv1.i, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.104, i32 noundef %port, i32 noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %conv3 = zext i32 %9 to i64
  %arrayidx4 = getelementptr i64, ptr %data, i32 %u.011
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv3, ptr %arrayidx4, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  %inc = add nuw nsw i32 %u.011, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan9303_get_sset_count(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %sset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 37, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_port_enable(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readnone %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.end, label %dsa_to_port.exit.cleanup_crit_edge

dsa_to_port.exit.cleanup_crit_edge:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dsa_to_port.exit
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_dp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %conv = trunc i32 %port to i16
  %call2 = tail call i32 @vlan_vid_add(ptr noundef %15, i16 noundef zeroext -32512, i16 noundef zeroext %conv) #7
  %16 = shl i16 %conv, 10
  %conv1.i.i = add i16 %16, 1025
  %call.i.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %9, i16 noundef zeroext %conv1.i.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i6.i = add i16 %16, 1088
  %call.i7.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %9, i16 noundef zeroext %conv1.i6.i, i32 noundef 87) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %dsa_to_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dsa_to_port.exit.cleanup_crit_edge ], [ %call.i7.i, %if.end.i ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_port_disable(ptr noundef readonly %ds, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.end, label %dsa_to_port.exit.cleanup_crit_edge

dsa_to_port.exit.cleanup_crit_edge:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dsa_to_port.exit
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_dp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %conv = trunc i32 %port to i16
  tail call void @vlan_vid_del(ptr noundef %15, i16 noundef zeroext -32512, i16 noundef zeroext %conv) #7
  %16 = shl i16 %conv, 10
  %conv1.i.i = add i16 %16, 1025
  %call.i.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %9, i16 noundef zeroext %conv1.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.lan9303_disable_processing_port.exit_crit_edge

if.end.lan9303_disable_processing_port.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_disable_processing_port.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i6.i = add i16 %16, 1088
  %call.i7.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %9, i16 noundef zeroext %conv1.i6.i, i32 noundef 86) #7
  br label %lan9303_disable_processing_port.exit

lan9303_disable_processing_port.exit:             ; preds = %if.end.i, %if.end.lan9303_disable_processing_port.exit_crit_edge
  %phy_addr_base = getelementptr inbounds %struct.lan9303, ptr %9, i32 0, i32 5
  %17 = ptrtoint ptr %phy_addr_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_addr_base, align 4
  %add = add i32 %18, %port
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %phy_addr_base.i = getelementptr inbounds %struct.lan9303, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %phy_addr_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_addr_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add)
  %cmp.i13 = icmp eq i32 %22, %add
  br i1 %cmp.i13, label %if.then.i, label %if.end.i15

if.then.i:                                        ; preds = %lan9303_disable_processing_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i.i = getelementptr inbounds %struct.lan9303, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i14 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 112, i32 noundef 2048) #7
  br label %cleanup

if.end.i15:                                       ; preds = %lan9303_disable_processing_port.exit
  %add.i = add i32 %22, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add)
  %cmp1.i = icmp slt i32 %add.i, %add
  br i1 %cmp1.i, label %if.end.i15.cleanup_crit_edge, label %if.end3.i

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i = getelementptr inbounds %struct.lan9303, ptr %20, i32 0, i32 9
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %phy_write.i = getelementptr inbounds %struct.lan9303_phy_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %phy_write.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_write.i, align 4
  %call4.i = tail call i32 %28(ptr noundef %20, i32 noundef %add, i32 noundef 0, i16 noundef zeroext 2048) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.i15.cleanup_crit_edge, %if.then.i, %dsa_to_port.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_port_bridge_join(ptr noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef readnone %tx_fwd_offload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_bridge_join.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_bridge_join, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_bridge_join.__UNIQUE_ID_ddebug501, ptr noundef %3, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %do.end.dsa_to_port.exit30_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.dsa_to_port.exit30_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit30

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %do.end.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %7 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %8, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5.i = icmp eq i32 %10, 1
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.for.body.i20.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.body.i20.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i20.preheader

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %for.body.i20.preheader

for.body.i20.preheader:                           ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.for.body.i20.preheader_crit_edge
  %retval.0.i12 = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %for.inc.i.for.body.i20.preheader_crit_edge ]
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.inc.i26.for.body.i20_crit_edge, %for.body.i20.preheader
  %.pn22.i17 = phi ptr [ %.pn.i24, %for.inc.i26.for.body.i20_crit_edge ], [ %.pn20.i, %for.body.i20.preheader ]
  %ds3.i18 = getelementptr i8, ptr %.pn22.i17, i32 -432
  %12 = ptrtoint ptr %ds3.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds3.i18, align 4
  %cmp4.i19 = icmp eq ptr %13, %ds
  br i1 %cmp4.i19, label %land.lhs.true.i23, label %for.body.i20.for.inc.i26_crit_edge

for.body.i20.for.inc.i26_crit_edge:               ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i26

land.lhs.true.i23:                                ; preds = %for.body.i20
  %index.i21 = getelementptr i8, ptr %.pn22.i17, i32 -428
  %14 = ptrtoint ptr %index.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp5.i22 = icmp eq i32 %15, 2
  br i1 %cmp5.i22, label %cleanup.split.loop.exit18.i28, label %land.lhs.true.i23.for.inc.i26_crit_edge

land.lhs.true.i23.for.inc.i26_crit_edge:          ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i26

for.inc.i26:                                      ; preds = %land.lhs.true.i23.for.inc.i26_crit_edge, %for.body.i20.for.inc.i26_crit_edge
  %16 = ptrtoint ptr %.pn22.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i24 = load ptr, ptr %.pn22.i17, align 4
  %cmp.not.i25 = icmp eq ptr %.pn.i24, %ports.i
  br i1 %cmp.not.i25, label %for.inc.i26.dsa_to_port.exit30_crit_edge, label %for.inc.i26.for.body.i20_crit_edge

for.inc.i26.for.body.i20_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i20

for.inc.i26.dsa_to_port.exit30_crit_edge:         ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_to_port.exit30

cleanup.split.loop.exit18.i28:                    ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i27 = getelementptr i8, ptr %.pn22.i17, i32 -448
  br label %dsa_to_port.exit30

dsa_to_port.exit30:                               ; preds = %cleanup.split.loop.exit18.i28, %for.inc.i26.dsa_to_port.exit30_crit_edge, %do.end.dsa_to_port.exit30_crit_edge
  %retval.0.i1233 = phi ptr [ %retval.0.i12, %cleanup.split.loop.exit18.i28 ], [ null, %do.end.dsa_to_port.exit30_crit_edge ], [ %retval.0.i12, %for.inc.i26.dsa_to_port.exit30_crit_edge ]
  %retval.0.i29 = phi ptr [ %dp.0.le.i27, %cleanup.split.loop.exit18.i28 ], [ null, %do.end.dsa_to_port.exit30_crit_edge ], [ null, %for.inc.i26.dsa_to_port.exit30_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i1233, i32 0, i32 14
  %17 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit30.dsa_port_bridge_dev_get.exit.i_crit_edge, label %cond.true.i.i

dsa_to_port.exit30.dsa_port_bridge_dev_get.exit.i_crit_edge: ; preds = %dsa_to_port.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_port_bridge_dev_get.exit.i

cond.true.i.i:                                    ; preds = %dsa_to_port.exit30
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %dsa_port_bridge_dev_get.exit.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %cond.true.i.i, %dsa_to_port.exit30.dsa_port_bridge_dev_get.exit.i_crit_edge
  %cond.i.i = phi ptr [ %20, %cond.true.i.i ], [ null, %dsa_to_port.exit30.dsa_port_bridge_dev_get.exit.i_crit_edge ]
  %bridge.i6.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i29, i32 0, i32 14
  %21 = ptrtoint ptr %bridge.i6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bridge.i6.i, align 4
  %tobool.not.i7.i = icmp eq ptr %22, null
  br i1 %tobool.not.i7.i, label %dsa_port_bridge_dev_get.exit.i.if.end7_crit_edge, label %dsa_port_bridge_same.exit

dsa_port_bridge_dev_get.exit.i.if.end7_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

dsa_port_bridge_same.exit:                        ; preds = %dsa_port_bridge_dev_get.exit.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool.not.i = icmp ne ptr %cond.i.i, null
  %tobool2.not.i = icmp ne ptr %24, null
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool2.not.i, i1 false
  %cmp.i = icmp eq ptr %cond.i.i, %24
  %spec.select.i = select i1 %or.cond.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %if.then6, label %dsa_port_bridge_same.exit.if.end7_crit_edge

dsa_port_bridge_same.exit.if.end7_crit_edge:      ; preds = %dsa_port_bridge_same.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %dsa_port_bridge_same.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6214, i32 noundef 0) #7
  %swe_port_state.i = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %swe_port_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %swe_port_state.i, align 4
  %call1.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6211, i32 noundef %26) #7
  %call2.i = tail call fastcc i32 @lan9303_alr_add_port(ptr noundef %1, ptr noundef nonnull @eth_reserved_addr_base, i32 noundef 0, i1 noundef zeroext true) #7
  %is_bridged = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %is_bridged to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %is_bridged, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %dsa_port_bridge_same.exit.if.end7_crit_edge, %dsa_port_bridge_dev_get.exit.i.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_port_bridge_leave(ptr nocapture noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_bridge_leave.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_bridge_leave, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_bridge_leave.__UNIQUE_ID_ddebug502, ptr noundef %3, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_bridged = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %is_bridged to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_bridged, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %do.end
  tail call fastcc void @lan9303_alr_del_port(ptr noundef %1, ptr noundef nonnull @eth_reserved_addr_base, i32 noundef 0) #7
  %call1.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6214, i32 noundef 314) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.lan9303_separate_ports.exit_crit_edge

if.then4.lan9303_separate_ports.exit_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_separate_ports.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6211, i32 noundef 20) #7
  br label %lan9303_separate_ports.exit

lan9303_separate_ports.exit:                      ; preds = %if.end.i, %if.then4.lan9303_separate_ports.exit_crit_edge
  %6 = ptrtoint ptr %is_bridged to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_bridged, align 4
  br label %if.end7

if.end7:                                          ; preds = %lan9303_separate_ports.exit, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_stp_state_set.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_stp_state_set, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %state to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_stp_state_set.__UNIQUE_ID_ddebug503, ptr noundef %3, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i32 noundef %port, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %state)
  %4 = icmp ult i8 %state, 5
  br i1 %4, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = zext i8 %state to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.111, i32 noundef %port, i32 noundef %conv3) #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.lan9303_port_stp_state_set, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %portstate.0 = phi i32 [ 3, %sw.default ], [ %switch.load, %switch.lookup ]
  %mul = shl i32 %port, 1
  %shl = shl i32 3, %mul
  %shl13 = shl i32 %portstate.0, %mul
  %swe_port_state = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %swe_port_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %swe_port_state, align 4
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %or = or i32 %and, %shl13
  store i32 %or, ptr %swe_port_state, align 4
  %is_bridged = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %is_bridged to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_bridged, align 4, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %sw.epilog.if.end19_crit_edge, label %if.then16

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %1, i16 noundef zeroext 6211, i32 noundef %or)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %sw.epilog.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_port_fast_age(ptr nocapture noundef readonly %ds, i32 noundef %port) #0 align 64 {
entry:
  %del_ctx = alloca %struct.del_port_learned_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %del_ctx) #7
  %2 = ptrtoint ptr %del_ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %port, ptr %del_ctx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_fast_age.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_fast_age, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_fast_age.__UNIQUE_ID_ddebug504, ptr noundef %4, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.112, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i32 @lan9303_alr_loop(ptr noundef %1, ptr noundef nonnull @alr_loop_cb_del_port_learned, ptr noundef nonnull %del_ctx)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %del_ctx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_port_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_fdb_add.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_fdb_add, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %vid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_fdb_add.__UNIQUE_ID_ddebug505, ptr noundef %3, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %port, ptr noundef %addr, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool3.not = icmp eq i16 %vid, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call fastcc i32 @lan9303_alr_add_port(ptr noundef %1, ptr noundef %addr, i32 noundef %port, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_port_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_fdb_del.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_fdb_del, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %vid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_fdb_del.__UNIQUE_ID_ddebug506, ptr noundef %3, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %port, ptr noundef %addr, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool3.not = icmp eq i16 %vid, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @lan9303_alr_del_port(ptr noundef %1, ptr noundef %addr, i32 noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_port_fdb_dump(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %cb, ptr noundef %data) #0 align 64 {
entry:
  %dump_ctx = alloca %struct.port_fdb_dump_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dump_ctx) #7
  %2 = getelementptr inbounds %struct.port_fdb_dump_ctx, ptr %dump_ctx, i32 0, i32 1
  %3 = getelementptr inbounds %struct.port_fdb_dump_ctx, ptr %dump_ctx, i32 0, i32 2
  %4 = ptrtoint ptr %dump_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port, ptr %dump_ctx, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cb, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_fdb_dump.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_fdb_dump, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_fdb_dump.__UNIQUE_ID_ddebug507, ptr noundef %8, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.117, i32 noundef %port) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call fastcc i32 @lan9303_alr_loop(ptr noundef %1, ptr noundef nonnull @alr_loop_cb_fdb_port_dump, ptr noundef nonnull %dump_ctx)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dump_ctx) #7
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_port_mdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mdb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_mdb_prepare.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_mdb_add, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !280

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %addr.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %4 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid.i, align 2
  %conv.i = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_mdb_prepare.__UNIQUE_ID_ddebug508, ptr noundef %3, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.119, i32 noundef %port, ptr noundef %addr.i, i32 noundef %conv.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %vid3.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %6 = ptrtoint ptr %vid3.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not.i = icmp eq i16 %7, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %addr7.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %alr_cache.i.i = getelementptr inbounds %struct.lan9303, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr7.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i
  %entr.08.i.i = phi ptr [ %alr_cache.i.i, %if.end6.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.07.i.i = phi i32 [ 0, %if.end6.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %entr.08.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entr.08.i.i, align 4
  %xor.i.i.i = xor i32 %13, %9
  %add.ptr.i.i.i = getelementptr i8, ptr %entr.08.i.i, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %15, %11
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %lan9303_alr_cache_find_mac.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.lan9303_alr_cache_entry, ptr %entr.08.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 512
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.body.i26.i.preheader_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.for.body.i26.i.preheader_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i26.i.preheader

lan9303_alr_cache_find_mac.exit.i:                ; preds = %for.body.i.i
  %tobool10.not.i = icmp eq ptr %entr.08.i.i, null
  br i1 %tobool10.not.i, label %lan9303_alr_cache_find_mac.exit.i.for.body.i26.i.preheader_crit_edge, label %lan9303_alr_cache_find_mac.exit.i.do.body_crit_edge

lan9303_alr_cache_find_mac.exit.i.do.body_crit_edge: ; preds = %lan9303_alr_cache_find_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lan9303_alr_cache_find_mac.exit.i.for.body.i26.i.preheader_crit_edge: ; preds = %lan9303_alr_cache_find_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i26.i.preheader

for.body.i26.i.preheader:                         ; preds = %lan9303_alr_cache_find_mac.exit.i.for.body.i26.i.preheader_crit_edge, %for.inc.i.i.for.body.i26.i.preheader_crit_edge
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.inc.i30.i.for.body.i26.i_crit_edge, %for.body.i26.i.preheader
  %entr.08.i24.i = phi ptr [ %incdec.ptr.i28.i, %for.inc.i30.i.for.body.i26.i_crit_edge ], [ %alr_cache.i.i, %for.body.i26.i.preheader ]
  %i.07.i25.i = phi i32 [ %inc.i27.i, %for.inc.i30.i.for.body.i26.i_crit_edge ], [ 0, %for.body.i26.i.preheader ]
  %port_map.i.i = getelementptr inbounds %struct.lan9303_alr_cache_entry, ptr %entr.08.i24.i, i32 0, i32 1
  %16 = ptrtoint ptr %port_map.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port_map.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp1.i.i = icmp eq i8 %17, 0
  br i1 %cmp1.i.i, label %lan9303_alr_cache_find_free.exit.i, label %for.inc.i30.i

for.inc.i30.i:                                    ; preds = %for.body.i26.i
  %inc.i27.i = add nuw nsw i32 %i.07.i25.i, 1
  %incdec.ptr.i28.i = getelementptr %struct.lan9303_alr_cache_entry, ptr %entr.08.i24.i, i32 1
  %exitcond.not.i29.i = icmp eq i32 %inc.i27.i, 512
  br i1 %exitcond.not.i29.i, label %for.inc.i30.i.cleanup_crit_edge, label %for.inc.i30.i.for.body.i26.i_crit_edge

for.inc.i30.i.for.body.i26.i_crit_edge:           ; preds = %for.inc.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i26.i

for.inc.i30.i.cleanup_crit_edge:                  ; preds = %for.inc.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lan9303_alr_cache_find_free.exit.i:               ; preds = %for.body.i26.i
  %tobool14.not.i = icmp eq ptr %entr.08.i24.i, null
  br i1 %tobool14.not.i, label %lan9303_alr_cache_find_free.exit.i.cleanup_crit_edge, label %lan9303_alr_cache_find_free.exit.i.do.body_crit_edge

lan9303_alr_cache_find_free.exit.i.do.body_crit_edge: ; preds = %lan9303_alr_cache_find_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lan9303_alr_cache_find_free.exit.i.cleanup_crit_edge: ; preds = %lan9303_alr_cache_find_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lan9303_alr_cache_find_free.exit.i.do.body_crit_edge, %lan9303_alr_cache_find_mac.exit.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_mdb_add.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_mdb_add, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !280

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %vid3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid3.i, align 2
  %conv = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_mdb_add.__UNIQUE_ID_ddebug509, ptr noundef %19, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.118, i32 noundef %port, ptr noundef %addr7.i, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call9 = tail call fastcc i32 @lan9303_alr_add_port(ptr noundef %1, ptr noundef %addr7.i, i32 noundef %port, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lan9303_alr_cache_find_free.exit.i.cleanup_crit_edge, %for.inc.i30.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ -95, %do.end.i.cleanup_crit_edge ], [ -28, %lan9303_alr_cache_find_free.exit.i.cleanup_crit_edge ], [ -28, %for.inc.i30.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_port_mdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mdb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_port_mdb_del.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_port_mdb_del, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %vid = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_port_mdb_del.__UNIQUE_ID_ddebug510, ptr noundef %3, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.120, i32 noundef %port, ptr noundef %addr, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vid3 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %6 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %addr7 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  tail call fastcc void @lan9303_alr_del_port(ptr noundef %1, ptr noundef %addr7, i32 noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext %regnum, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %regnum to i32
  %or1 = or i32 %conv, -2146500608
  %indirect_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %indirect_mutex, i32 noundef 0) #7
  %regmap.i.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.015.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !279
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call fastcc i32 @lan9303_read(ptr noundef %2, i32 noundef 108, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lan9303_switch_wait_for_completion.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool1.not.i.i = icmp sgt i32 %4, -1
  br i1 %tobool1.not.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %for.inc.i.i.on_error_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.on_error_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

lan9303_switch_wait_for_completion.exit:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  br label %on_error

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call2 = call i32 @regmap_write(ptr noundef %8, i32 noundef 107, i32 noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.54, i32 noundef %call2) #10
  br label %on_error

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call7 = call i32 @regmap_write(ptr noundef %12, i32 noundef 108, i32 noundef %or1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.on_error_crit_edge, label %do.end12

if.end5.on_error_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.57, i32 noundef %call7) #10
  br label %on_error

on_error:                                         ; preds = %do.end12, %if.end5.on_error_crit_edge, %do.end, %lan9303_switch_wait_for_completion.exit, %for.inc.i.i.on_error_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %lan9303_switch_wait_for_completion.exit ], [ %call2, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end5.on_error_crit_edge ], [ -110, %for.inc.i.i.on_error_crit_edge ]
  call void @mutex_unlock(ptr noundef %indirect_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan9303_alr_del_port(ptr noundef %chip, ptr noundef %mac, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alr_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %alr_mutex, i32 noundef 0) #7
  %alr_cache.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %mac, i32 4
  %2 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %entr.08.i = phi ptr [ %alr_cache.i, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %entr.08.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entr.08.i, align 4
  %xor.i.i = xor i32 %5, %1
  %add.ptr.i.i = getelementptr i8, ptr %entr.08.i, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %7, %3
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %lan9303_alr_cache_find_mac.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %incdec.ptr.i = getelementptr %struct.lan9303_alr_cache_entry, ptr %entr.08.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lan9303_alr_cache_find_mac.exit:                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entr.08.i, null
  br i1 %tobool.not, label %lan9303_alr_cache_find_mac.exit.out_crit_edge, label %if.end

lan9303_alr_cache_find_mac.exit.out_crit_edge:    ; preds = %lan9303_alr_cache_find_mac.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %lan9303_alr_cache_find_mac.exit
  %shl = shl nuw i32 1, %port
  %port_map = getelementptr inbounds %struct.lan9303_alr_cache_entry, ptr %entr.08.i, i32 0, i32 1
  %8 = ptrtoint ptr %port_map to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_map, align 1
  %10 = trunc i32 %shl to i8
  %11 = xor i8 %10, -1
  %conv1 = and i8 %9, %11
  store i8 %conv1, ptr %port_map, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %cmp = icmp eq i8 %conv1, 0
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = call ptr @memset(ptr %entr.08.i, i32 0, i32 6)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %13 = ptrtoint ptr %port_map to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_map, align 1
  %stp_override = getelementptr inbounds %struct.lan9303_alr_cache_entry, ptr %entr.08.i, i32 0, i32 2
  %15 = ptrtoint ptr %stp_override to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %stp_override, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_alr_set_entry.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_alr_del_port, %if.then.i)) #7
          to label %lan9303_alr_set_entry.exit [label %if.then.i], !srcloc !280

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %conv.i = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_alr_set_entry.__UNIQUE_ID_ddebug499, ptr noundef %18, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef %mac, i32 noundef %conv.i) #7
  br label %lan9303_alr_set_entry.exit

lan9303_alr_set_entry.exit:                       ; preds = %if.then.i, %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 16777216, i32 83886080
  %or9.i = or i32 %spec.select.i, 33554432
  %dat1.1.i = select i1 %tobool8.not, i32 %spec.select.i, i32 %or9.i
  %19 = and i8 %14, 7
  %and.i = zext i8 %19 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr @portmap_2_alrport, i32 0, i32 %and.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %21, 16
  %or13.i = or i32 %shl.i, %dat1.1.i
  %22 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac, align 1
  %conv15.i = zext i8 %23 to i32
  %arrayidx18.i = getelementptr i8, ptr %mac, i32 1
  %24 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %25 to i32
  %shl20.i = shl nuw nsw i32 %conv19.i, 8
  %or21.i = or i32 %shl20.i, %conv15.i
  %arrayidx22.i = getelementptr i8, ptr %mac, i32 2
  %26 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %27 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 16
  %or25.i = or i32 %or21.i, %shl24.i
  %arrayidx26.i = getelementptr i8, ptr %mac, i32 3
  %28 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %29 to i32
  %shl28.i = shl nuw i32 %conv27.i, 24
  %or29.i = or i32 %or25.i, %shl28.i
  %30 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr1.i.i, align 1
  %conv31.i = zext i8 %31 to i32
  %or33.i = or i32 %or13.i, %conv31.i
  %arrayidx34.i = getelementptr i8, ptr %mac, i32 5
  %32 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %33 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 8
  %or37.i = or i32 %or33.i, %shl36.i
  tail call fastcc void @lan9303_alr_make_entry_raw(ptr noundef %chip, i32 noundef %or29.i, i32 noundef %or37.i) #7
  br label %out

out:                                              ; preds = %lan9303_alr_set_entry.exit, %lan9303_alr_cache_find_mac.exit.out_crit_edge, %for.inc.i.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %alr_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan9303_alr_make_entry_raw(ptr noundef %chip, i32 noundef %dat0, i32 noundef %dat1) unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6145, i32 noundef %dat0)
  %call1 = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6146, i32 noundef %dat1)
  %call2 = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6144, i32 noundef 4)
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !279
  %call.i = call fastcc i32 @lan9303_read_switch_reg(ptr noundef %chip, i16 noundef zeroext 6152, ptr noundef nonnull %reg.i) #7
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cleanup1.critedge.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %if.end.i.lan9303_csr_reg_wait.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.lan9303_csr_reg_wait.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan9303_csr_reg_wait.exit

cleanup1.critedge.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %lan9303_csr_reg_wait.exit

lan9303_csr_reg_wait.exit:                        ; preds = %cleanup1.critedge.i, %if.end.i.lan9303_csr_reg_wait.exit_crit_edge
  %call4 = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6144, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan9303_read_switch_reg(ptr noundef %chip, i16 noundef zeroext %regnum, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg.i.i37 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %indirect_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %indirect_mutex, i32 noundef 0) #7
  %regmap.i.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.015.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !279
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call fastcc i32 @lan9303_read(ptr noundef %2, i32 noundef 108, ptr noundef nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lan9303_switch_wait_for_completion.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool1.not.i.i = icmp sgt i32 %4, -1
  br i1 %tobool1.not.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %for.inc.i.i.on_error_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.on_error_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

lan9303_switch_wait_for_completion.exit:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  br label %on_error

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %conv = zext i16 %regnum to i32
  %or2 = or i32 %conv, -1072758784
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call3 = call i32 @regmap_write(ptr noundef %8, i32 noundef 108, i32 noundef %or2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.for.body.i.i42_crit_edge, label %do.end

if.end.for.body.i.i42_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i42

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef %call3) #10
  br label %on_error

for.body.i.i42:                                   ; preds = %for.inc.i.i49.for.body.i.i42_crit_edge, %if.end.for.body.i.i42_crit_edge
  %i.015.i.i39 = phi i32 [ %inc.i.i47, %for.inc.i.i49.for.body.i.i42_crit_edge ], [ 0, %if.end.for.body.i.i42_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i37) #7
  %11 = ptrtoint ptr %reg.i.i37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %reg.i.i37, align 4, !annotation !279
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i40 = call fastcc i32 @lan9303_read(ptr noundef %13, i32 noundef 108, ptr noundef nonnull %reg.i.i37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.end.i.i45, label %lan9303_switch_wait_for_completion.exit51

if.end.i.i45:                                     ; preds = %for.body.i.i42
  %14 = ptrtoint ptr %reg.i.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool1.not.i.i44 = icmp sgt i32 %15, -1
  br i1 %tobool1.not.i.i44, label %if.end10, label %for.inc.i.i49

for.inc.i.i49:                                    ; preds = %if.end.i.i45
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i37) #7
  %inc.i.i47 = add nuw nsw i32 %i.015.i.i39, 1
  %exitcond.not.i.i48 = icmp eq i32 %inc.i.i47, 25
  br i1 %exitcond.not.i.i48, label %for.inc.i.i49.on_error_crit_edge, label %for.inc.i.i49.for.body.i.i42_crit_edge

for.inc.i.i49.for.body.i.i42_crit_edge:           ; preds = %for.inc.i.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i42

for.inc.i.i49.on_error_crit_edge:                 ; preds = %for.inc.i.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

lan9303_switch_wait_for_completion.exit51:        ; preds = %for.body.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef %call.i.i40) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i37) #7
  br label %on_error

if.end10:                                         ; preds = %if.end.i.i45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i37) #7
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call12 = call fastcc i32 @lan9303_read(ptr noundef %19, i32 noundef 107, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.on_error_crit_edge, label %do.end17

if.end10.on_error_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %on_error

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.63, i32 noundef %call12) #10
  br label %on_error

on_error:                                         ; preds = %do.end17, %if.end10.on_error_crit_edge, %lan9303_switch_wait_for_completion.exit51, %for.inc.i.i49.on_error_crit_edge, %do.end, %lan9303_switch_wait_for_completion.exit, %for.inc.i.i.on_error_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %lan9303_switch_wait_for_completion.exit ], [ %call3, %do.end ], [ %call.i.i40, %lan9303_switch_wait_for_completion.exit51 ], [ %call12, %do.end17 ], [ 0, %if.end10.on_error_crit_edge ], [ -110, %for.inc.i.i49.on_error_crit_edge ], [ -110, %for.inc.i.i.on_error_crit_edge ]
  call void @mutex_unlock(ptr noundef %indirect_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan9303_alr_add_port(ptr noundef %chip, ptr noundef %mac, i32 noundef %port, i1 noundef zeroext %stp_override) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %stp_override to i8
  %alr_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %alr_mutex, i32 noundef 0) #7
  %alr_cache.i = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %mac, i32 4
  %2 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %entr.08.i = phi ptr [ %alr_cache.i, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %entr.08.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entr.08.i, align 4
  %xor.i.i = xor i32 %5, %1
  %add.ptr.i.i = getelementptr i8, ptr %entr.08.i, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %7, %3
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %lan9303_alr_cache_find_mac.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %incdec.ptr.i = getelementptr %struct.lan9303_alr_cache_entry, ptr %entr.08.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.inc.i.for.body.i29.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.body.i29.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29.preheader

lan9303_alr_cache_find_mac.exit:                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entr.08.i, null
  br i1 %tobool.not, label %lan9303_alr_cache_find_mac.exit.for.body.i29.preheader_crit_edge, label %lan9303_alr_cache_find_mac.exit.if.end5_crit_edge

lan9303_alr_cache_find_mac.exit.if.end5_crit_edge: ; preds = %lan9303_alr_cache_find_mac.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

lan9303_alr_cache_find_mac.exit.for.body.i29.preheader_crit_edge: ; preds = %lan9303_alr_cache_find_mac.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29.preheader

for.body.i29.preheader:                           ; preds = %lan9303_alr_cache_find_mac.exit.for.body.i29.preheader_crit_edge, %for.inc.i.for.body.i29.preheader_crit_edge
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.inc.i33.for.body.i29_crit_edge, %for.body.i29.preheader
  %entr.08.i27 = phi ptr [ %incdec.ptr.i31, %for.inc.i33.for.body.i29_crit_edge ], [ %alr_cache.i, %for.body.i29.preheader ]
  %i.07.i28 = phi i32 [ %inc.i30, %for.inc.i33.for.body.i29_crit_edge ], [ 0, %for.body.i29.preheader ]
  %port_map.i = getelementptr inbounds %struct.lan9303_alr_cache_entry, ptr %entr.08.i27, i32 0, i32 1
  %8 = ptrtoint ptr %port_map.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_map.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.i = icmp eq i8 %9, 0
  br i1 %cmp1.i, label %lan9303_alr_cache_find_free.exit, label %for.inc.i33

for.inc.i33:                                      ; preds = %for.body.i29
  %inc.i30 = add nuw nsw i32 %i.07.i28, 1
  %incdec.ptr.i31 = getelementptr %struct.lan9303_alr_cache_entry, ptr %entr.08.i27, i32 1
  %exitcond.not.i32 = icmp eq i32 %inc.i30, 512
  br i1 %exitcond.not.i32, label %for.inc.i33.cleanup_crit_edge, label %for.inc.i33.for.body.i29_crit_edge

for.inc.i33.for.body.i29_crit_edge:               ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29

for.inc.i33.cleanup_crit_edge:                    ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lan9303_alr_cache_find_free.exit:                 ; preds = %for.body.i29
  %tobool2.not = icmp eq ptr %entr.08.i27, null
  br i1 %tobool2.not, label %lan9303_alr_cache_find_free.exit.cleanup_crit_edge, label %if.end

lan9303_alr_cache_find_free.exit.cleanup_crit_edge: ; preds = %lan9303_alr_cache_find_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lan9303_alr_cache_find_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %entr.08.i27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %entr.08.i27, align 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %entr.08.i27, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %lan9303_alr_cache_find_mac.exit.if.end5_crit_edge
  %entr.0 = phi ptr [ %entr.08.i, %lan9303_alr_cache_find_mac.exit.if.end5_crit_edge ], [ %entr.08.i27, %if.end ]
  %shl = shl nuw i32 1, %port
  %port_map = getelementptr inbounds %struct.lan9303_alr_cache_entry, ptr %entr.0, i32 0, i32 1
  %14 = ptrtoint ptr %port_map to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_map, align 1
  %16 = trunc i32 %shl to i8
  %conv6 = or i8 %15, %16
  store i8 %conv6, ptr %port_map, align 1
  %stp_override9 = getelementptr inbounds %struct.lan9303_alr_cache_entry, ptr %entr.0, i32 0, i32 2
  %17 = ptrtoint ptr %stp_override9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %stp_override9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan9303_alr_set_entry.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan9303_alr_add_port, %if.then.i)) #7
          to label %lan9303_alr_set_entry.exit [label %if.then.i], !srcloc !280

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %conv.i = zext i8 %conv6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lan9303_alr_set_entry.__UNIQUE_ID_ddebug499, ptr noundef %19, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef %mac, i32 noundef %conv.i) #7
  br label %lan9303_alr_set_entry.exit

lan9303_alr_set_entry.exit:                       ; preds = %if.then.i, %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %tobool4.not.i = icmp eq i8 %conv6, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 16777216, i32 83886080
  %or9.i = or i32 %spec.select.i, 33554432
  %dat1.1.i = select i1 %stp_override, i32 %or9.i, i32 %spec.select.i
  %20 = and i8 %conv6, 7
  %and.i = zext i8 %20 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr @portmap_2_alrport, i32 0, i32 %and.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %22, 16
  %or13.i = or i32 %shl.i, %dat1.1.i
  %23 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mac, align 1
  %conv15.i = zext i8 %24 to i32
  %arrayidx18.i = getelementptr i8, ptr %mac, i32 1
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %26 to i32
  %shl20.i = shl nuw nsw i32 %conv19.i, 8
  %or21.i = or i32 %shl20.i, %conv15.i
  %arrayidx22.i = getelementptr i8, ptr %mac, i32 2
  %27 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %28 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 16
  %or25.i = or i32 %or21.i, %shl24.i
  %arrayidx26.i = getelementptr i8, ptr %mac, i32 3
  %29 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %30 to i32
  %shl28.i = shl nuw i32 %conv27.i, 24
  %or29.i = or i32 %or25.i, %shl28.i
  %31 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr1.i.i, align 1
  %conv31.i = zext i8 %32 to i32
  %or33.i = or i32 %or13.i, %conv31.i
  %arrayidx34.i = getelementptr i8, ptr %mac, i32 5
  %33 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %34 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 8
  %or37.i = or i32 %or33.i, %shl36.i
  tail call fastcc void @lan9303_alr_make_entry_raw(ptr noundef %chip, i32 noundef %or29.i, i32 noundef %or37.i) #7
  br label %cleanup

cleanup:                                          ; preds = %lan9303_alr_set_entry.exit, %lan9303_alr_cache_find_free.exit.cleanup_crit_edge, %for.inc.i33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lan9303_alr_set_entry.exit ], [ -28, %lan9303_alr_cache_find_free.exit.cleanup_crit_edge ], [ -28, %for.inc.i33.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alr_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan9303_alr_loop(ptr noundef %chip, ptr nocapture noundef readonly %cb, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %dat0 = alloca i32, align 4
  %dat1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alr_mutex = getelementptr inbounds %struct.lan9303, ptr %chip, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %alr_mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6144, i32 noundef 2)
  %call1 = tail call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6144, i32 noundef 0)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 1, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dat0) #7
  %0 = ptrtoint ptr %dat0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dat0, align 4, !annotation !279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dat1) #7
  %1 = ptrtoint ptr %dat1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dat1, align 4, !annotation !279
  %call2 = call fastcc i32 @lan9303_read_switch_reg(ptr noundef %chip, i16 noundef zeroext 6149, ptr noundef nonnull %dat0)
  %call3 = call fastcc i32 @lan9303_read_switch_reg(ptr noundef %chip, i16 noundef zeroext 6150, ptr noundef nonnull %dat1)
  %2 = ptrtoint ptr %dat1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dat1, align 4
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end:                                           ; preds = %for.body
  %and4 = lshr i32 %3, 16
  %shr = and i32 %and4, 7
  %arrayidx = getelementptr [8 x i32], ptr @alrport_2_portmap, i32 0, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %dat0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dat0, align 4
  %call5 = call i32 %cb(ptr noundef %chip, i32 noundef %7, i32 noundef %3, i32 noundef %5, ptr noundef %ctx) #7, !callees !282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.inc, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %ret.1.ph = phi i32 [ %call5, %if.end.cleanup.thread_crit_edge ], [ 0, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dat1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dat0) #7
  br label %for.end

for.inc:                                          ; preds = %if.end
  %call9 = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6144, i32 noundef 1)
  %call10 = call fastcc i32 @lan9303_write_switch_reg(ptr noundef %chip, i16 noundef zeroext 6144, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dat1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dat0) #7
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread
  %ret.2 = phi i32 [ %ret.1.ph, %cleanup.thread ], [ 0, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %alr_mutex) #7
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alr_loop_cb_del_port_learned(ptr noundef %chip, i32 noundef %dat0, i32 noundef %dat1, i32 noundef %portmap, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %shl = shl nuw i32 1, %1
  %and = and i32 %shl, %portmap
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %and2 = and i32 %dat1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3 = and i32 %dat1, -67108865
  tail call fastcc void @lan9303_alr_make_entry_raw(ptr noundef %chip, i32 noundef %dat0, i32 noundef %and3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alr_loop_cb_fdb_port_dump(ptr nocapture noundef readnone %chip, i32 noundef %dat0, i32 noundef %dat1, i32 noundef %portmap, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %shl = shl nuw i32 1, %1
  %and = and i32 %shl, %portmap
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  %3 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %conv.i = trunc i32 %dat0 to i8
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %mac, align 1
  %shr1.i = lshr i32 %dat0, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %6, align 1
  %shr5.i = lshr i32 %dat0, 16
  %conv7.i = trunc i32 %shr5.i to i8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7.i, ptr %5, align 1
  %shr9.i = lshr i32 %dat0, 24
  %conv11.i = trunc i32 %shr9.i to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11.i, ptr %4, align 1
  %conv15.i = trunc i32 %dat1 to i8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15.i, ptr %3, align 1
  %shr17.i = lshr i32 %dat1, 8
  %conv19.i = trunc i32 %shr17.i to i8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv19.i, ptr %2, align 1
  %and1 = and i32 %dat1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool = icmp ne i32 %and1, 0
  %cb = getelementptr inbounds %struct.port_fdb_dump_ctx, ptr %ctx, i32 0, i32 2
  %13 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb, align 4
  %data = getelementptr inbounds %struct.port_fdb_dump_ctx, ptr %ctx, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call = call i32 %14(ptr noundef nonnull %mac, i16 noundef zeroext 0, i1 noundef zeroext %tobool, ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !47, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !253, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269}
!llvm.module.flags = !{!270, !271, !272, !273, !274, !275, !276, !277}
!llvm.ident = !{!278}

!0 = !{ptr @lan9303_register_set, !1, !"lan9303_register_set", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/lan9303-core.c", i32 215, i32 34}
!2 = !{ptr @__ksymtab_lan9303_register_set, !3, !"__ksymtab_lan9303_register_set", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/lan9303-core.c", i32 221, i32 1}
!4 = !{ptr @lan9303_indirect_phy_ops, !5, !"lan9303_indirect_phy_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/lan9303-core.c", i32 361, i32 30}
!6 = !{ptr @__ksymtab_lan9303_indirect_phy_ops, !7, !"__ksymtab_lan9303_indirect_phy_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/lan9303-core.c", i32 365, i32 1}
!8 = !{ptr @lan9303_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1349, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lan9303_probe.__key.1, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1350, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1364, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lan9303_probe.__UNIQUE_ID_ddebug513, !15, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!20 = !{ptr @__ksymtab_lan9303_probe, !21, !"__ksymtab_lan9303_probe", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1370, i32 1}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1378, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lan9303_remove._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @lan9303_remove._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_lan9303_remove, !30, !"__ksymtab_lan9303_remove", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1388, i32 1}
!31 = !{ptr @__ksymtab_lan9303_shutdown, !32, !"__ksymtab_lan9303_shutdown", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1394, i32 1}
!33 = !{ptr @__UNIQUE_ID_author514, !34, !"__UNIQUE_ID_author514", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1396, i32 1}
!35 = !{ptr @__UNIQUE_ID_description515, !36, !"__UNIQUE_ID_description515", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1397, i32 1}
!37 = !{ptr @__UNIQUE_ID_file516, !38, !"__UNIQUE_ID_file516", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1398, i32 1}
!39 = !{ptr @__UNIQUE_ID_license517, !38, !"__UNIQUE_ID_license517", i1 false, i1 false}
!40 = !{ptr @lan9303_valid_regs, !41, !"lan9303_valid_regs", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/lan9303-core.c", i32 186, i32 34}
!42 = !{ptr @lan9303_reserved_ranges, !43, !"lan9303_reserved_ranges", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/lan9303-core.c", i32 202, i32 34}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/lan9303-core.c", i32 254, i32 4}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @lan9303_read_wait._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @lan9303_read_wait._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1319, i32 56}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1325, i32 3}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug511, !53, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1332, i32 28}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1335, i32 3}
!60 = !{ptr @lan9303_probe_reset_gpio.__UNIQUE_ID_ddebug512, !59, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/lan9303-core.c", i32 852, i32 3}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @lan9303_check_device._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @lan9303_check_device._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/dsa/lan9303-core.c", i32 855, i32 4}
!68 = !{ptr @lan9303_check_device.__UNIQUE_ID_ddebug500, !67, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/dsa/lan9303-core.c", i32 862, i32 3}
!71 = !{ptr @lan9303_check_device._entry.22, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @lan9303_check_device._entry_ptr.24, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/dsa/lan9303-core.c", i32 876, i32 3}
!75 = !{ptr @lan9303_check_device._entry.25, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @lan9303_check_device._entry_ptr.27, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/dsa/lan9303-core.c", i32 878, i32 2}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @lan9303_check_device._entry.28, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @lan9303_check_device._entry_ptr.31, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/dsa/lan9303-core.c", i32 882, i32 3}
!84 = !{ptr @lan9303_check_device._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lan9303_check_device._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/dsa/lan9303-core.c", i32 486, i32 3}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @lan9303_detect_phy_setup._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @lan9303_detect_phy_setup._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/dsa/lan9303-core.c", i32 492, i32 2}
!93 = !{ptr @lan9303_detect_phy_setup.__UNIQUE_ID_ddebug497, !92, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!94 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lan9303_switch_ops, !97, !"lan9303_switch_ops", i1 false, i1 false}
!97 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1276, i32 36}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/lan9303-core.c", i32 906, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @lan9303_setup._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @lan9303_setup._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/dsa/lan9303-core.c", i32 912, i32 3}
!105 = !{ptr @lan9303_setup._entry.42, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lan9303_setup._entry_ptr.44, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/dsa/lan9303-core.c", i32 916, i32 3}
!109 = !{ptr @lan9303_setup._entry.45, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lan9303_setup._entry_ptr.47, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/dsa/lan9303-core.c", i32 920, i32 3}
!113 = !{ptr @lan9303_setup._entry.48, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @lan9303_setup._entry_ptr.50, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/lan9303-core.c", i32 929, i32 3}
!117 = !{ptr @lan9303_setup._entry.51, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @lan9303_setup._entry_ptr.53, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/lan9303-core.c", i32 390, i32 3}
!121 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @lan9303_write_switch_reg._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @lan9303_write_switch_reg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/dsa/lan9303-core.c", i32 397, i32 3}
!126 = !{ptr @lan9303_write_switch_reg._entry.56, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @lan9303_write_switch_reg._entry_ptr.58, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/dsa/lan9303-core.c", i32 657, i32 2}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @lan9303_alr_set_entry.__UNIQUE_ID_ddebug499, !129, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!132 = !{ptr @portmap_2_alrport, !133, !"portmap_2_alrport", i1 false, i1 false}
!133 = !{!"../drivers/net/dsa/lan9303-core.c", i32 500, i32 18}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/dsa/lan9303-core.c", i32 424, i32 3}
!136 = !{ptr @lan9303_read_switch_reg._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @lan9303_read_switch_reg._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/dsa/lan9303-core.c", i32 435, i32 3}
!140 = !{ptr @lan9303_read_switch_reg._entry.62, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @lan9303_read_switch_reg._entry_ptr.64, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @eth_reserved_addr_base, !143, !"eth_reserved_addr_base", i1 false, i1 false}
!143 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1066, i32 3}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @lan9303_adjust_link._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @lan9303_adjust_link._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/dsa/lan9303-core.c", i32 940, i32 51}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/dsa/lan9303-core.c", i32 941, i32 50}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/dsa/lan9303-core.c", i32 942, i32 51}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/dsa/lan9303-core.c", i32 943, i32 50}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/dsa/lan9303-core.c", i32 944, i32 51}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/dsa/lan9303-core.c", i32 945, i32 50}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/dsa/lan9303-core.c", i32 946, i32 49}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/dsa/lan9303-core.c", i32 947, i32 49}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/dsa/lan9303-core.c", i32 948, i32 47}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/dsa/lan9303-core.c", i32 949, i32 48}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/dsa/lan9303-core.c", i32 950, i32 48}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/dsa/lan9303-core.c", i32 951, i32 48}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/dsa/lan9303-core.c", i32 952, i32 49}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/dsa/lan9303-core.c", i32 953, i32 48}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/dsa/lan9303-core.c", i32 954, i32 51}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/dsa/lan9303-core.c", i32 955, i32 50}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/dsa/lan9303-core.c", i32 956, i32 51}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/dsa/lan9303-core.c", i32 957, i32 51}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/dsa/lan9303-core.c", i32 958, i32 51}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/dsa/lan9303-core.c", i32 959, i32 51}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/dsa/lan9303-core.c", i32 960, i32 50}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/dsa/lan9303-core.c", i32 961, i32 51}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/dsa/lan9303-core.c", i32 962, i32 51}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/dsa/lan9303-core.c", i32 963, i32 47}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/dsa/lan9303-core.c", i32 964, i32 48}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/dsa/lan9303-core.c", i32 965, i32 48}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/dsa/lan9303-core.c", i32 966, i32 48}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/dsa/lan9303-core.c", i32 967, i32 49}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/dsa/lan9303-core.c", i32 968, i32 48}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/dsa/lan9303-core.c", i32 969, i32 51}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/dsa/lan9303-core.c", i32 970, i32 50}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/dsa/lan9303-core.c", i32 971, i32 53}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/dsa/lan9303-core.c", i32 972, i32 53}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/dsa/lan9303-core.c", i32 973, i32 53}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/dsa/lan9303-core.c", i32 974, i32 50}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/dsa/lan9303-core.c", i32 975, i32 50}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/dsa/lan9303-core.c", i32 976, i32 48}
!223 = !{ptr @lan9303_mib, !224, !"lan9303_mib", i1 false, i1 false}
!224 = !{!"../drivers/net/dsa/lan9303-core.c", i32 939, i32 38}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1007, i32 4}
!227 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @lan9303_get_ethtool_stats._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @lan9303_get_ethtool_stats._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1118, i32 2}
!232 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @lan9303_port_bridge_join.__UNIQUE_ID_ddebug501, !231, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1132, i32 2}
!236 = !{ptr @lan9303_port_bridge_leave.__UNIQUE_ID_ddebug502, !235, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1145, i32 2}
!239 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @lan9303_port_stp_state_set.__UNIQUE_ID_ddebug503, !238, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1164, i32 3}
!243 = !{ptr @lan9303_port_stp_state_set._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @lan9303_port_stp_state_set._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1186, i32 2}
!247 = !{ptr @.str.113, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @lan9303_port_fast_age.__UNIQUE_ID_ddebug504, !246, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!249 = !{ptr @alrport_2_portmap, !250, !"alrport_2_portmap", i1 false, i1 false}
!250 = !{!"../drivers/net/dsa/lan9303-core.c", i32 499, i32 18}
!251 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1195, i32 2}
!253 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @lan9303_port_fdb_add.__UNIQUE_ID_ddebug505, !252, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!255 = !{ptr @.str.116, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1208, i32 2}
!257 = !{ptr @lan9303_port_fdb_del.__UNIQUE_ID_ddebug506, !256, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1226, i32 2}
!260 = !{ptr @lan9303_port_fdb_dump.__UNIQUE_ID_ddebug507, !259, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!261 = !{ptr @.str.118, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1257, i32 2}
!263 = !{ptr @lan9303_port_mdb_add.__UNIQUE_ID_ddebug509, !262, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!264 = !{ptr @.str.119, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1235, i32 2}
!266 = !{ptr @lan9303_port_mdb_prepare.__UNIQUE_ID_ddebug508, !265, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!267 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/dsa/lan9303-core.c", i32 1267, i32 2}
!269 = !{ptr @lan9303_port_mdb_del.__UNIQUE_ID_ddebug510, !268, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!270 = !{i32 1, !"wchar_size", i32 2}
!271 = !{i32 1, !"min_enum_size", i32 4}
!272 = !{i32 8, !"branch-target-enforcement", i32 0}
!273 = !{i32 8, !"sign-return-address", i32 0}
!274 = !{i32 8, !"sign-return-address-all", i32 0}
!275 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!276 = !{i32 7, !"uwtable", i32 1}
!277 = !{i32 7, !"frame-pointer", i32 2}
!278 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!279 = !{!"auto-init"}
!280 = !{i64 2148729833, i64 2148729838, i64 2148729851, i64 2148729895, i64 2148729929, i64 2148729950}
!281 = !{i8 0, i8 2}
!282 = !{ptr @alr_loop_cb_del_port_learned, ptr @alr_loop_cb_fdb_port_dump}
