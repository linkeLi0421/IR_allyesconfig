; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sch5627.c_pt.bc'
source_filename = "../drivers/hwmon/sch5627.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.sch5627_data = type { i16, i8, [8 x i8], [8 x i8], [4 x i16], %struct.mutex, i32, i8, i8, i8, i32, i32, i32, [8 x i16], [4 x i16], [5 x i16] }

@__initcall__kmod_sch5627__183_466_sch5627_driver_init6 = internal global ptr @sch5627_driver_init, section ".initcall6.init", align 4
@sch5627_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sch5627_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sch5627_driver_exit = internal global ptr @sch5627_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [60 x i8] c"sch5627.description=SMSC SCH5627 Hardware Monitoring Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [51 x i8] c"sch5627.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [35 x i8] c"sch5627.file=drivers/hwmon/sch5627\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [20 x i8] c"sch5627.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch5627\00", [24 x i8] zeroinitializer }, align 32
@sch5627_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@sch5627_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013sch5627: invalid %s id: 0x%02X (expected 0x%02X)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sch5627_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/sch5627.c\00", [40 x i8] zeroinitializer }, align 32
@sch5627_probe._entry_ptr = internal global ptr @sch5627_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwmon\00", [26 x i8] zeroinitializer }, align 32
@sch5627_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sch5627_probe._entry_ptr.7 = internal global ptr @sch5627_probe._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"company\00", [24 x i8] zeroinitializer }, align 32
@sch5627_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sch5627_probe._entry_ptr.10 = internal global ptr @sch5627_probe._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@sch5627_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013sch5627: hardware monitoring not enabled\0A\00", [52 x i8] zeroinitializer }, align 32
@sch5627_probe._entry_ptr.14 = internal global ptr @sch5627_probe._entry.12, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sch5627_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016sch5627: found %s chip at %#hx\0A\00", [62 x i8] zeroinitializer }, align 32
@sch5627_probe._entry_ptr.17 = internal global ptr @sch5627_probe._entry.15, section ".printk_index", align 4
@sch5627_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016sch5627: firmware build: code 0x%02X, id 0x%04X, hwmon: rev 0x%02X\0A\00", [58 x i8] zeroinitializer }, align 32
@sch5627_probe._entry_ptr.20 = internal global ptr @sch5627_probe._entry.18, section ".printk_index", align 4
@sch5627_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @sch5627_ops, ptr @sch5627_info }, [24 x i8] zeroinitializer }, align 32
@SCH5627_REG_TEMP_ABS = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 155, i16 150, i16 151, i16 152, i16 153, i16 154, i16 424, i16 425], [16 x i8] zeroinitializer }, align 32
@SCH5627_REG_TEMP_HIGH = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 97, i16 87, i16 89, i16 91, i16 93, i16 95, i16 388, i16 390], [16 x i8] zeroinitializer }, align 32
@sch5627_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @sch5627_is_visible, ptr @sch5627_read, ptr @sch5627_read_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@sch5627_info = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.26, ptr @.compoundliteral.28, ptr @.compoundliteral.30, ptr @.compoundliteral.32, ptr null], [44 x i8] zeroinitializer }, align 32
@SCH5627_REG_IN_FACTOR = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 10745, i16 3660, i16 9765, i16 10745, i16 3660], [22 x i8] zeroinitializer }, align 32
@SCH5627_IN_LABELS = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCC\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VTT\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VTR\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V_IN\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 524930, i32 524930, i32 524930, i32 524930, i32 524930, i32 524930, i32 524930, i32 524930, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.27 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 2058, i32 2058, i32 2058, i32 2058, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.29 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 1026, i32 1026, i32 1026, i32 1026, i32 2, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.31 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 11]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"sch5627_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 459, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 461, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 371, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 379, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 389, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 399, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 425, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 442, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 443, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"sch5627_chip_info\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 354, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"SCH5627_REG_TEMP_ABS\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 46, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"SCH5627_REG_TEMP_HIGH\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 44, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"sch5627_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 320, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"sch5627_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 326, i32 41 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"SCH5627_REG_IN_FACTOR\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 60, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"SCH5627_IN_LABELS\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 62, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 63, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 63, i32 9 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 63, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 63, i32 24 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [27 x i8] c"../drivers/hwmon/sch5627.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 63, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_sch5627_driver_exit, ptr @__initcall__kmod_sch5627__183_466_sch5627_driver_init6, ptr @sch5627_driver_exit, ptr @sch5627_probe._entry, ptr @sch5627_probe._entry.12, ptr @sch5627_probe._entry.15, ptr @sch5627_probe._entry.18, ptr @sch5627_probe._entry.6, ptr @sch5627_probe._entry.9, ptr @sch5627_probe._entry_ptr, ptr @sch5627_probe._entry_ptr.10, ptr @sch5627_probe._entry_ptr.14, ptr @sch5627_probe._entry_ptr.17, ptr @sch5627_probe._entry_ptr.20, ptr @sch5627_probe._entry_ptr.7, ptr @sch5627_driver, ptr @.str, ptr @sch5627_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @sch5627_chip_info, ptr @SCH5627_REG_TEMP_ABS, ptr @SCH5627_REG_TEMP_HIGH, ptr @sch5627_ops, ptr @sch5627_info, ptr @SCH5627_REG_IN_FACTOR, ptr @SCH5627_IN_LABELS, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.compoundliteral, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5627_REG_TEMP_ABS to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5627_REG_TEMP_HIGH to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch5627_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5627_REG_IN_FACTOR to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SCH5627_IN_LABELS to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sch5627_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sch5627_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sch5627_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sch5627_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sch5627_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 176, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #7
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.sch5627_data, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sch5627_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %call.i, align 4
  %call3 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %5, i16 noundef zeroext 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %call3)
  %cmp7.not = icmp eq i32 %call3, 165
  br i1 %cmp7.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef %call3, i32 noundef 165) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %call.i, align 4
  %call16 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %7, i16 noundef zeroext 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call16)
  %cmp21.not = icmp eq i32 %call16, 92
  br i1 %cmp21.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call16, i32 noundef 92) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call.i, align 4
  %call31 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %9, i16 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %call31)
  %cmp36.not = icmp eq i32 %call31, 160
  br i1 %cmp36.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, i32 noundef %call31, i32 noundef 160) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call.i, align 4
  %call46 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %11, i16 noundef zeroext 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end44.cleanup_crit_edge, label %if.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call.i, align 4
  %call52 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %13, i16 noundef zeroext 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end50.cleanup_crit_edge, label %if.end56

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call.i, align 4
  %call58 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %15, i16 noundef zeroext 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end56.cleanup_crit_edge, label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call.i, align 4
  %call64 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %17, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end62.cleanup_crit_edge, label %if.end68

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.end62
  %conv69 = trunc i32 %call64 to i8
  %control = getelementptr inbounds %struct.sch5627_data, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv69, ptr %control, align 2
  %and = and i32 %call64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %do.end76, label %if.end79

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end79:                                         ; preds = %if.end68
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call.i, align 4
  %conv83 = or i8 %conv69, 16
  %call84 = tail call i32 @sch56xx_write_virtual_reg(i16 noundef zeroext %20, i16 noundef zeroext 64, i8 noundef zeroext %conv83) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %last_battery = getelementptr inbounds %struct.sch5627_data, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %last_battery to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_battery, align 4
  %call85 = tail call fastcc i32 @sch5627_read_limits(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.end91, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end91:                                         ; preds = %if.end79
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call.i, align 4
  %conv94 = zext i16 %24 to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef %conv94) #10
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call46, i32 noundef %call52, i32 noundef %call58) #10
  %call102 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef nonnull @sch5627_chip_info, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then104, label %if.end106

if.then104:                                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call102 to i32
  br label %cleanup

if.end106:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %call.i, align 4
  %shl = shl i32 %call46, 24
  %shl109 = shl i32 %call52, 8
  %or110 = or i32 %shl109, %shl
  %or111 = or i32 %or110, %call58
  tail call void @sch56xx_watchdog_register(ptr noundef %dev, i16 noundef zeroext %27, i32 noundef %or111, ptr noundef %update_lock, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.then104, %if.end79.cleanup_crit_edge, %do.end76, %if.end62.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end41, %if.end29.cleanup_crit_edge, %do.end26, %if.end14.cleanup_crit_edge, %do.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end12 ], [ -19, %do.end26 ], [ -19, %do.end41 ], [ %25, %if.then104 ], [ 0, %if.end106 ], [ -19, %do.end76 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call31, %if.end29.cleanup_crit_edge ], [ %call46, %if.end44.cleanup_crit_edge ], [ %call52, %if.end50.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ %call85, %if.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sch56xx_read_virtual_reg(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sch56xx_write_virtual_reg(i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sch5627_read_limits(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %if.end9.for.body_crit_edge ]
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 4
  %arrayidx = getelementptr [8 x i16], ptr @SCH5627_REG_TEMP_ABS, i32 0, i32 %i.053
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %call = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %1, i16 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv = trunc i32 %call to i8
  %arrayidx2 = getelementptr %struct.sch5627_data, ptr %data, i32 0, i32 2, i32 %i.053
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx2, align 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data, align 4
  %arrayidx4 = getelementptr [8 x i16], ptr @SCH5627_REG_TEMP_HIGH, i32 0, i32 %i.053
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx4, align 2
  %call5 = tail call i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %6, i16 noundef zeroext %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv10 = trunc i32 %call5 to i8
  %arrayidx11 = getelementptr %struct.sch5627_data, ptr %data, i32 0, i32 3, i32 %i.053
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx11, align 1
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body15.preheader, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body15.preheader:                             ; preds = %if.end9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 4
  %call18 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %11, i16 noundef zeroext 98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %for.body15.preheader.cleanup_crit_edge, label %if.end22

for.body15.preheader.cleanup_crit_edge:           ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %for.body15.preheader
  %conv23 = trunc i32 %call18 to i16
  %arrayidx24 = getelementptr %struct.sch5627_data, ptr %data, i32 0, i32 4, i32 0
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv23, ptr %arrayidx24, align 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 4
  %call18.1 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %14, i16 noundef zeroext 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %cmp19.1 = icmp slt i32 %call18.1, 0
  br i1 %cmp19.1, label %if.end22.cleanup_crit_edge, label %if.end22.1

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.1:                                       ; preds = %if.end22
  %conv23.1 = trunc i32 %call18.1 to i16
  %arrayidx24.1 = getelementptr %struct.sch5627_data, ptr %data, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv23.1, ptr %arrayidx24.1, align 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 4
  %call18.2 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %17, i16 noundef zeroext 102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %cmp19.2 = icmp slt i32 %call18.2, 0
  br i1 %cmp19.2, label %if.end22.1.cleanup_crit_edge, label %if.end22.2

if.end22.1.cleanup_crit_edge:                     ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.2:                                       ; preds = %if.end22.1
  %conv23.2 = trunc i32 %call18.2 to i16
  %arrayidx24.2 = getelementptr %struct.sch5627_data, ptr %data, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv23.2, ptr %arrayidx24.2, align 2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data, align 4
  %call18.3 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %20, i16 noundef zeroext 104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3)
  %cmp19.3 = icmp slt i32 %call18.3, 0
  br i1 %cmp19.3, label %if.end22.2.cleanup_crit_edge, label %if.end22.3

if.end22.2.cleanup_crit_edge:                     ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.3:                                       ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #9
  %conv23.3 = trunc i32 %call18.3 to i16
  %arrayidx24.3 = getelementptr %struct.sch5627_data, ptr %data, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv23.3, ptr %arrayidx24.3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end22.3, %if.end22.2.cleanup_crit_edge, %if.end22.1.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %for.body15.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %for.body15.preheader.cleanup_crit_edge ], [ %call18.1, %if.end22.cleanup_crit_edge ], [ %call18.2, %if.end22.1.cleanup_crit_edge ], [ %call18.3, %if.end22.2.cleanup_crit_edge ], [ 0, %if.end22.3 ], [ %call5, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sch56xx_watchdog_register(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @sch5627_is_visible(ptr nocapture noundef readnone %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sch5627_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb15
    i32 2, label %sw.bb43
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %update_lock.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %temp_last_updated.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %temp_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp_last_updated.i, align 4
  %add.i = add i32 %4, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.bb.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %temp_valid.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %temp_valid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %call.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %9, i16 noundef zeroext 43, i16 noundef zeroext 226, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.then.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.i, !prof !93

if.then.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %conv9.i = trunc i32 %call.i to i16
  %arrayidx10.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 0
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv9.i, ptr %arrayidx10.i, align 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %call.1.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %12, i16 noundef zeroext 38, i16 noundef zeroext 225, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp4.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp4.1.i, label %if.end.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.1.i, !prof !93

if.end.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.1.i:                                       ; preds = %if.end.i
  %conv9.1.i = trunc i32 %call.1.i to i16
  %arrayidx10.1.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv9.1.i, ptr %arrayidx10.1.i, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %call.2.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %15, i16 noundef zeroext 39, i16 noundef zeroext 225, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp4.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp4.2.i, label %if.end.1.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.2.i, !prof !93

if.end.1.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.2.i:                                       ; preds = %if.end.1.i
  %conv9.2.i = trunc i32 %call.2.i to i16
  %arrayidx10.2.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv9.2.i, ptr %arrayidx10.2.i, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %call.3.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %18, i16 noundef zeroext 40, i16 noundef zeroext 229, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp4.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp4.3.i, label %if.end.2.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.3.i, !prof !93

if.end.2.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.3.i:                                       ; preds = %if.end.2.i
  %conv9.3.i = trunc i32 %call.3.i to i16
  %arrayidx10.3.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 3
  %19 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv9.3.i, ptr %arrayidx10.3.i, align 2
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %call.4.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %21, i16 noundef zeroext 41, i16 noundef zeroext 229, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp4.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp4.4.i, label %if.end.3.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.4.i, !prof !93

if.end.3.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.4.i:                                       ; preds = %if.end.3.i
  %conv9.4.i = trunc i32 %call.4.i to i16
  %arrayidx10.4.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 4
  %22 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv9.4.i, ptr %arrayidx10.4.i, align 2
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %call.5.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %24, i16 noundef zeroext 42, i16 noundef zeroext 230, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp4.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp4.5.i, label %if.end.4.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.5.i, !prof !93

if.end.4.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.5.i:                                       ; preds = %if.end.4.i
  %conv9.5.i = trunc i32 %call.5.i to i16
  %arrayidx10.5.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 5
  %25 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv9.5.i, ptr %arrayidx10.5.i, align 2
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %call.6.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %27, i16 noundef zeroext 384, i16 noundef zeroext 386, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp4.6.i = icmp slt i32 %call.6.i, 0
  br i1 %cmp4.6.i, label %if.end.5.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.6.i, !prof !93

if.end.5.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.6.i:                                       ; preds = %if.end.5.i
  %conv9.6.i = trunc i32 %call.6.i to i16
  %arrayidx10.6.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 6
  %28 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv9.6.i, ptr %arrayidx10.6.i, align 2
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %call.7.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %30, i16 noundef zeroext 385, i16 noundef zeroext 386, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp4.7.i = icmp slt i32 %call.7.i, 0
  br i1 %cmp4.7.i, label %if.end.6.i.sch5627_update_temp.exit.thread_crit_edge, label %if.end.7.i, !prof !93

if.end.6.i.sch5627_update_temp.exit.thread_crit_edge: ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_temp.exit.thread

if.end.7.i:                                       ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.7.i = trunc i32 %call.7.i to i16
  %arrayidx10.7.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 7
  %31 = ptrtoint ptr %arrayidx10.7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv9.7.i, ptr %arrayidx10.7.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %temp_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %temp_last_updated.i, align 4
  %temp_valid12.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %temp_valid12.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %temp_valid12.i, align 4
  br label %if.end

sch5627_update_temp.exit.thread:                  ; preds = %if.end.6.i.sch5627_update_temp.exit.thread_crit_edge, %if.end.5.i.sch5627_update_temp.exit.thread_crit_edge, %if.end.4.i.sch5627_update_temp.exit.thread_crit_edge, %if.end.3.i.sch5627_update_temp.exit.thread_crit_edge, %if.end.2.i.sch5627_update_temp.exit.thread_crit_edge, %if.end.1.i.sch5627_update_temp.exit.thread_crit_edge, %if.end.i.sch5627_update_temp.exit.thread_crit_edge, %if.then.i.sch5627_update_temp.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call.7.i, %if.end.6.i.sch5627_update_temp.exit.thread_crit_edge ], [ %call.6.i, %if.end.5.i.sch5627_update_temp.exit.thread_crit_edge ], [ %call.5.i, %if.end.4.i.sch5627_update_temp.exit.thread_crit_edge ], [ %call.4.i, %if.end.3.i.sch5627_update_temp.exit.thread_crit_edge ], [ %call.3.i, %if.end.2.i.sch5627_update_temp.exit.thread_crit_edge ], [ %call.2.i, %if.end.1.i.sch5627_update_temp.exit.thread_crit_edge ], [ %call.1.i, %if.end.i.sch5627_update_temp.exit.thread_crit_edge ], [ %call.i, %if.then.i.sch5627_update_temp.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.7.i, %lor.lhs.false.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #7
  %35 = add i32 %attr, -1
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 31)
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %36, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
    i32 9, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 %channel
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %39 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 625
  %div.i = udiv i32 %mul.i, 10
  %sub.i113 = add nsw i32 %div.i, -64000
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i113, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 2, i32 %channel
  %41 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx5, align 1
  %conv.i114 = zext i8 %42 to i32
  %43 = mul nuw nsw i32 %conv.i114, 1000
  %mul.i115 = add nsw i32 %43, -64000
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.i115, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 3, i32 %channel
  %45 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8, align 1
  %conv.i116 = zext i8 %46 to i32
  %47 = mul nuw nsw i32 %conv.i116, 1000
  %mul.i117 = add nsw i32 %47, -64000
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.i117, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 13, i32 %channel
  %49 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp13 = icmp eq i16 %50, 0
  %conv14 = zext i1 %cmp13 to i32
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv14, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %update_lock.i118 = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i118, i32 noundef 0) #7
  %fan_last_updated.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %fan_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fan_last_updated.i, align 4
  %add.i119 = add i32 %53, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub.i120 = sub i32 %add.i119, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i120)
  %cmp.i121 = icmp slt i32 %sub.i120, 0
  br i1 %cmp.i121, label %sw.bb15.if.then.i125_crit_edge, label %lor.lhs.false.i123

sw.bb15.if.then.i125_crit_edge:                   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i125

lor.lhs.false.i123:                               ; preds = %sw.bb15
  %fan_valid.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %fan_valid.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fan_valid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i122 = icmp eq i8 %56, 0
  br i1 %tobool.not.i122, label %lor.lhs.false.i123.if.then.i125_crit_edge, label %lor.lhs.false.i123.if.end20_crit_edge

lor.lhs.false.i123.if.end20_crit_edge:            ; preds = %lor.lhs.false.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

lor.lhs.false.i123.if.then.i125_crit_edge:        ; preds = %lor.lhs.false.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i125

if.then.i125:                                     ; preds = %lor.lhs.false.i123.if.then.i125_crit_edge, %sw.bb15.if.then.i125_crit_edge
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 4
  %call.i124 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %58, i16 noundef zeroext 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp2.i = icmp slt i32 %call.i124, 0
  br i1 %cmp2.i, label %if.then.i125.sch5627_update_fan.exit.thread_crit_edge, label %if.end.i128, !prof !93

if.then.i125.sch5627_update_fan.exit.thread_crit_edge: ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_fan.exit.thread

if.end.i128:                                      ; preds = %if.then.i125
  %conv.i126 = trunc i32 %call.i124 to i16
  %arrayidx6.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 14, i32 0
  %59 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i126, ptr %arrayidx6.i, align 2
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %1, align 4
  %call.1.i127 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %61, i16 noundef zeroext 46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i127)
  %cmp2.1.i = icmp slt i32 %call.1.i127, 0
  br i1 %cmp2.1.i, label %if.end.i128.sch5627_update_fan.exit.thread_crit_edge, label %if.end.1.i130, !prof !93

if.end.i128.sch5627_update_fan.exit.thread_crit_edge: ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_fan.exit.thread

if.end.1.i130:                                    ; preds = %if.end.i128
  %conv.1.i = trunc i32 %call.1.i127 to i16
  %arrayidx6.1.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 14, i32 1
  %62 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.1.i, ptr %arrayidx6.1.i, align 2
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %1, align 4
  %call.2.i129 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %64, i16 noundef zeroext 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i129)
  %cmp2.2.i = icmp slt i32 %call.2.i129, 0
  br i1 %cmp2.2.i, label %if.end.1.i130.sch5627_update_fan.exit.thread_crit_edge, label %if.end.2.i132, !prof !93

if.end.1.i130.sch5627_update_fan.exit.thread_crit_edge: ; preds = %if.end.1.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_fan.exit.thread

if.end.2.i132:                                    ; preds = %if.end.1.i130
  %conv.2.i = trunc i32 %call.2.i129 to i16
  %arrayidx6.2.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 14, i32 2
  %65 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.2.i, ptr %arrayidx6.2.i, align 2
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %1, align 4
  %call.3.i131 = tail call i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %67, i16 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i131)
  %cmp2.3.i = icmp slt i32 %call.3.i131, 0
  br i1 %cmp2.3.i, label %if.end.2.i132.sch5627_update_fan.exit.thread_crit_edge, label %if.end.3.i133, !prof !93

if.end.2.i132.sch5627_update_fan.exit.thread_crit_edge: ; preds = %if.end.2.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_fan.exit.thread

if.end.3.i133:                                    ; preds = %if.end.2.i132
  call void @__sanitizer_cov_trace_pc() #9
  %conv.3.i = trunc i32 %call.3.i131 to i16
  %arrayidx6.3.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 14, i32 3
  %68 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.3.i, ptr %arrayidx6.3.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %70 = ptrtoint ptr %fan_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %fan_last_updated.i, align 4
  %fan_valid8.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 8
  %71 = ptrtoint ptr %fan_valid8.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %fan_valid8.i, align 1
  br label %if.end20

sch5627_update_fan.exit.thread:                   ; preds = %if.end.2.i132.sch5627_update_fan.exit.thread_crit_edge, %if.end.1.i130.sch5627_update_fan.exit.thread_crit_edge, %if.end.i128.sch5627_update_fan.exit.thread_crit_edge, %if.then.i125.sch5627_update_fan.exit.thread_crit_edge
  %ret.0.i134.ph = phi i32 [ %call.3.i131, %if.end.2.i132.sch5627_update_fan.exit.thread_crit_edge ], [ %call.2.i129, %if.end.1.i130.sch5627_update_fan.exit.thread_crit_edge ], [ %call.1.i127, %if.end.i128.sch5627_update_fan.exit.thread_crit_edge ], [ %call.i124, %if.then.i125.sch5627_update_fan.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i118) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end.3.i133, %lor.lhs.false.i123.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i118) #7
  %72 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %attr, label %if.end20.cleanup_crit_edge [
    i32 1, label %sw.bb21
    i32 3, label %sw.bb28
    i32 11, label %sw.bb35
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb21:                                          ; preds = %if.end20
  %arrayidx22 = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 14, i32 %channel
  %73 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx22, align 2
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %74, label %if.end6.i [
    i16 0, label %sw.bb21.cleanup_crit_edge
    i16 -1, label %sw.bb21.if.end27_crit_edge
  ]

sw.bb21.if.end27_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i135 = zext i16 %74 to i32
  %div.i136 = udiv i32 5400540, %conv.i135
  br label %if.end27

if.end27:                                         ; preds = %if.end6.i, %sw.bb21.if.end27_crit_edge
  %retval.0.i.ph = phi i32 [ %div.i136, %if.end6.i ], [ 0, %sw.bb21.if.end27_crit_edge ]
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i.ph, ptr %val, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end20
  %arrayidx29 = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 4, i32 %channel
  %77 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx29, align 2
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %78, label %if.end6.i140 [
    i16 0, label %sw.bb28.cleanup_crit_edge
    i16 -1, label %sw.bb28.if.end34_crit_edge
  ]

sw.bb28.if.end34_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i140:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i138 = zext i16 %78 to i32
  %div.i139 = udiv i32 5400540, %conv.i138
  br label %if.end34

if.end34:                                         ; preds = %if.end6.i140, %sw.bb28.if.end34_crit_edge
  %retval.0.i141.ph = phi i32 [ %div.i139, %if.end6.i140 ], [ 0, %sw.bb28.if.end34_crit_edge ]
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i141.ph, ptr %val, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx37 = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 14, i32 %channel
  %81 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %82)
  %cmp39 = icmp eq i16 %82, -1
  %conv40 = zext i1 %cmp39 to i32
  %83 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv40, ptr %val, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  %update_lock.i143 = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i143, i32 noundef 0) #7
  %last_battery.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 6
  %84 = ptrtoint ptr %last_battery.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %last_battery.i, align 4
  %add.i144 = add i32 %85, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %sub.i145 = sub i32 %add.i144, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i145)
  %cmp.i146 = icmp slt i32 %sub.i145, 0
  br i1 %cmp.i146, label %if.then.i148, label %sw.bb43.if.end.i149_crit_edge

sw.bb43.if.end.i149_crit_edge:                    ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i149

if.then.i148:                                     ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %1, align 4
  %control.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %control.i, align 2
  %91 = or i8 %90, 16
  %call.i147 = tail call i32 @sch56xx_write_virtual_reg(i16 noundef zeroext %88, i16 noundef zeroext 64, i8 noundef zeroext %91) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %93 = ptrtoint ptr %last_battery.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %last_battery.i, align 4
  br label %if.end.i149

if.end.i149:                                      ; preds = %if.then.i148, %sw.bb43.if.end.i149_crit_edge
  %in_last_updated.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 12
  %94 = ptrtoint ptr %in_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %in_last_updated.i, align 4
  %add3.i = add i32 %95, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %sub4.i = sub i32 %add3.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %cmp5.i = icmp slt i32 %sub4.i, 0
  br i1 %cmp5.i, label %if.end.i149.if.then7.i_crit_edge, label %lor.lhs.false.i151

if.end.i149.if.then7.i_crit_edge:                 ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

lor.lhs.false.i151:                               ; preds = %if.end.i149
  %in_valid.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 9
  %97 = ptrtoint ptr %in_valid.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %in_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i150 = icmp eq i8 %98, 0
  br i1 %tobool.not.i150, label %lor.lhs.false.i151.if.then7.i_crit_edge, label %lor.lhs.false.i151.if.end48_crit_edge

lor.lhs.false.i151.if.end48_crit_edge:            ; preds = %lor.lhs.false.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

lor.lhs.false.i151.if.then7.i_crit_edge:          ; preds = %lor.lhs.false.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i151.if.then7.i_crit_edge, %if.end.i149.if.then7.i_crit_edge
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %1, align 4
  %call14.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %100, i16 noundef zeroext 34, i16 noundef zeroext 228, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then7.i.sch5627_update_in.exit.thread_crit_edge, label %if.end20.i, !prof !93

if.then7.i.sch5627_update_in.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_in.exit.thread

if.end20.i:                                       ; preds = %if.then7.i
  %conv21.i = trunc i32 %call14.i to i16
  %arrayidx22.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 15, i32 0
  %101 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv21.i, ptr %arrayidx22.i, align 2
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %1, align 4
  %call14.1.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %103, i16 noundef zeroext 35, i16 noundef zeroext 228, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1.i)
  %cmp15.1.i = icmp slt i32 %call14.1.i, 0
  br i1 %cmp15.1.i, label %if.end20.i.sch5627_update_in.exit.thread_crit_edge, label %if.end20.1.i, !prof !93

if.end20.i.sch5627_update_in.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_in.exit.thread

if.end20.1.i:                                     ; preds = %if.end20.i
  %conv21.1.i = trunc i32 %call14.1.i to i16
  %arrayidx22.1.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 15, i32 1
  %104 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv21.1.i, ptr %arrayidx22.1.i, align 2
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %1, align 4
  %call14.2.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %106, i16 noundef zeroext 36, i16 noundef zeroext 227, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2.i)
  %cmp15.2.i = icmp slt i32 %call14.2.i, 0
  br i1 %cmp15.2.i, label %if.end20.1.i.sch5627_update_in.exit.thread_crit_edge, label %if.end20.2.i, !prof !93

if.end20.1.i.sch5627_update_in.exit.thread_crit_edge: ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_in.exit.thread

if.end20.2.i:                                     ; preds = %if.end20.1.i
  %conv21.2.i = trunc i32 %call14.2.i to i16
  %arrayidx22.2.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 15, i32 2
  %107 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv21.2.i, ptr %arrayidx22.2.i, align 2
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %1, align 4
  %call14.3.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %109, i16 noundef zeroext 37, i16 noundef zeroext 227, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3.i)
  %cmp15.3.i = icmp slt i32 %call14.3.i, 0
  br i1 %cmp15.3.i, label %if.end20.2.i.sch5627_update_in.exit.thread_crit_edge, label %if.end20.3.i, !prof !93

if.end20.2.i.sch5627_update_in.exit.thread_crit_edge: ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_in.exit.thread

if.end20.3.i:                                     ; preds = %if.end20.2.i
  %conv21.3.i = trunc i32 %call14.3.i to i16
  %arrayidx22.3.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 15, i32 3
  %110 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv21.3.i, ptr %arrayidx22.3.i, align 2
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %1, align 4
  %call14.4.i = tail call i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %112, i16 noundef zeroext 393, i16 noundef zeroext 394, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.4.i)
  %cmp15.4.i = icmp slt i32 %call14.4.i, 0
  br i1 %cmp15.4.i, label %if.end20.3.i.sch5627_update_in.exit.thread_crit_edge, label %if.end20.4.i, !prof !93

if.end20.3.i.sch5627_update_in.exit.thread_crit_edge: ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch5627_update_in.exit.thread

if.end20.4.i:                                     ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.4.i = trunc i32 %call14.4.i to i16
  %arrayidx22.4.i = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 15, i32 4
  %113 = ptrtoint ptr %arrayidx22.4.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv21.4.i, ptr %arrayidx22.4.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %115 = ptrtoint ptr %in_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %in_last_updated.i, align 4
  %in_valid24.i = getelementptr inbounds %struct.sch5627_data, ptr %1, i32 0, i32 9
  %116 = ptrtoint ptr %in_valid24.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %in_valid24.i, align 2
  br label %if.end48

sch5627_update_in.exit.thread:                    ; preds = %if.end20.3.i.sch5627_update_in.exit.thread_crit_edge, %if.end20.2.i.sch5627_update_in.exit.thread_crit_edge, %if.end20.1.i.sch5627_update_in.exit.thread_crit_edge, %if.end20.i.sch5627_update_in.exit.thread_crit_edge, %if.then7.i.sch5627_update_in.exit.thread_crit_edge
  %ret.0.i152.ph = phi i32 [ %call14.4.i, %if.end20.3.i.sch5627_update_in.exit.thread_crit_edge ], [ %call14.3.i, %if.end20.2.i.sch5627_update_in.exit.thread_crit_edge ], [ %call14.2.i, %if.end20.1.i.sch5627_update_in.exit.thread_crit_edge ], [ %call14.1.i, %if.end20.i.sch5627_update_in.exit.thread_crit_edge ], [ %call14.i, %if.then7.i.sch5627_update_in.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i143) #7
  br label %cleanup

if.end48:                                         ; preds = %if.end20.4.i, %lor.lhs.false.i151.if.end48_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i143) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond68 = icmp eq i32 %attr, 1
  br i1 %cond68, label %sw.bb49, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb49:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx50 = getelementptr %struct.sch5627_data, ptr %1, i32 0, i32 15, i32 %channel
  %117 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx50, align 2
  %conv51 = zext i16 %118 to i32
  %arrayidx52 = getelementptr [5 x i16], ptr @SCH5627_REG_IN_FACTOR, i32 0, i32 %channel
  %119 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %120 to i32
  %mul = mul nuw i32 %conv53, %conv51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp54 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp54, i32 5000, i32 -5000
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 10000
  %121 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %cond, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb49, %if.end48.cleanup_crit_edge, %sch5627_update_in.exit.thread, %sw.bb35, %if.end34, %sw.bb28.cleanup_crit_edge, %if.end27, %sw.bb21.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %sch5627_update_fan.exit.thread, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb2, %if.end.cleanup_crit_edge, %sch5627_update_temp.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb49 ], [ 0, %sw.bb35 ], [ 0, %if.end34 ], [ 0, %if.end27 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end48.cleanup_crit_edge ], [ -95, %if.end20.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %ret.0.i.ph, %sch5627_update_temp.exit.thread ], [ %ret.0.i134.ph, %sch5627_update_fan.exit.thread ], [ -5, %sw.bb21.cleanup_crit_edge ], [ -5, %sw.bb28.cleanup_crit_edge ], [ %ret.0.i152.ph, %sch5627_update_in.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sch5627_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %cond4 = icmp eq i32 %attr, 10
  %or.cond = and i1 %cond, %cond4
  br i1 %or.cond, label %sw.bb1, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [5 x ptr], ptr @SCH5627_IN_LABELS, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %str, align 4
  br label %return

return:                                           ; preds = %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_sch5627__183_466_sch5627_driver_init6, !1, !"__initcall__kmod_sch5627__183_466_sch5627_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sch5627.c", i32 466, i32 1}
!2 = !{ptr @__exitcall_sch5627_driver_exit, !1, !"__exitcall_sch5627_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sch5627.c", i32 468, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sch5627.c", i32 469, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sch5627.c", i32 470, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/sch5627.c", i32 461, i32 11}
!12 = !{ptr @sch5627_driver, !13, !"sch5627_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sch5627.c", i32 459, i32 31}
!14 = !{ptr @sch5627_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/sch5627.c", i32 371, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/sch5627.c", i32 379, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sch5627_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sch5627_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sch5627_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/sch5627.c", i32 389, i32 3}
!26 = !{ptr @sch5627_probe._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sch5627_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/sch5627.c", i32 399, i32 3}
!30 = !{ptr @sch5627_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/sch5627.c", i32 425, i32 3}
!34 = !{ptr @sch5627_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sch5627_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/sch5627.c", i32 442, i32 2}
!38 = !{ptr @sch5627_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sch5627_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/sch5627.c", i32 443, i32 2}
!42 = !{ptr @sch5627_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sch5627_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @SCH5627_REG_TEMP_ABS, !45, !"SCH5627_REG_TEMP_ABS", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/sch5627.c", i32 46, i32 18}
!46 = !{ptr @SCH5627_REG_TEMP_HIGH, !47, !"SCH5627_REG_TEMP_HIGH", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/sch5627.c", i32 44, i32 18}
!48 = distinct !{null, !49, !"SCH5627_REG_FAN_MIN", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/sch5627.c", i32 51, i32 18}
!50 = !{ptr @sch5627_chip_info, !51, !"sch5627_chip_info", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/sch5627.c", i32 354, i32 37}
!52 = !{ptr @sch5627_ops, !53, !"sch5627_ops", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/sch5627.c", i32 320, i32 31}
!54 = distinct !{null, !55, !"SCH5627_REG_TEMP_MSB", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/sch5627.c", i32 38, i32 18}
!56 = distinct !{null, !57, !"SCH5627_REG_TEMP_LSN", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/sch5627.c", i32 40, i32 18}
!58 = distinct !{null, !59, !"SCH5627_REG_TEMP_HIGH_NIBBLE", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/sch5627.c", i32 42, i32 18}
!60 = distinct !{null, !61, !"SCH5627_REG_FAN", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/sch5627.c", i32 49, i32 18}
!62 = distinct !{null, !63, !"SCH5627_REG_IN_MSB", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/sch5627.c", i32 54, i32 18}
!64 = distinct !{null, !65, !"SCH5627_REG_IN_LSN", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/sch5627.c", i32 56, i32 18}
!66 = distinct !{null, !67, !"SCH5627_REG_IN_HIGH_NIBBLE", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/sch5627.c", i32 58, i32 18}
!68 = !{ptr @SCH5627_REG_IN_FACTOR, !69, !"SCH5627_REG_IN_FACTOR", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/sch5627.c", i32 60, i32 18}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/sch5627.c", i32 63, i32 2}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/sch5627.c", i32 63, i32 9}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/sch5627.c", i32 63, i32 16}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/sch5627.c", i32 63, i32 24}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/sch5627.c", i32 63, i32 31}
!80 = !{ptr @SCH5627_IN_LABELS, !81, !"SCH5627_IN_LABELS", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/sch5627.c", i32 62, i32 27}
!82 = !{ptr @sch5627_info, !83, !"sch5627_info", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/sch5627.c", i32 326, i32 41}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
