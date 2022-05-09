; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/tcpm/tcpci.c_pt.bc'
source_filename = "../drivers/usb/typec/tcpm/tcpci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tcpci_get_tcpm_port\22, \22a\22\09"
module asm "\09.weak\09__crc_tcpci_get_tcpm_port\09\09\09\09"
module asm "\09.long\09__crc_tcpci_get_tcpm_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcpci_get_tcpm_port:\09\09\09\09\09"
module asm "\09.asciz \09\22tcpci_get_tcpm_port\22\09\09\09\09\09"
module asm "__kstrtabns_tcpci_get_tcpm_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcpci_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_tcpci_irq\09\09\09\09"
module asm "\09.long\09__crc_tcpci_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcpci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22tcpci_irq\22\09\09\09\09\09"
module asm "__kstrtabns_tcpci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcpci_register_port\22, \22a\22\09"
module asm "\09.weak\09__crc_tcpci_register_port\09\09\09\09"
module asm "\09.long\09__crc_tcpci_register_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcpci_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22tcpci_register_port\22\09\09\09\09\09"
module asm "__kstrtabns_tcpci_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcpci_unregister_port\22, \22a\22\09"
module asm "\09.weak\09__crc_tcpci_unregister_port\09\09\09\09"
module asm "\09.long\09__crc_tcpci_unregister_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcpci_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22tcpci_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_tcpci_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.tcpci = type { ptr, ptr, ptr, i8, %struct.tcpc_dev, ptr }
%struct.tcpc_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pd_message = type <{ i16, %union.anon.78 }>
%union.anon.78 = type { [7 x i32] }
%struct.tcpci_data = type { ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tcpci_chip = type { ptr, %struct.tcpci_data }

@__kstrtab_tcpci_get_tcpm_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcpci_get_tcpm_port = external dso_local constant [0 x i8], align 1
@__ksymtab_tcpci_get_tcpm_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcpci_get_tcpm_port to i32), ptr @__kstrtab_tcpci_get_tcpm_port, ptr @__kstrtabns_tcpci_get_tcpm_port }, section "___ksymtab_gpl+tcpci_get_tcpm_port", align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/typec/tcpm/tcpci.c\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_tcpci_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcpci_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_tcpci_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcpci_irq to i32), ptr @__kstrtab_tcpci_irq, ptr @__kstrtabns_tcpci_irq }, section "___ksymtab_gpl+tcpci_irq", align 4
@__kstrtab_tcpci_register_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcpci_register_port = external dso_local constant [0 x i8], align 1
@__ksymtab_tcpci_register_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcpci_register_port to i32), ptr @__kstrtab_tcpci_register_port, ptr @__kstrtabns_tcpci_register_port }, section "___ksymtab_gpl+tcpci_register_port", align 4
@__kstrtab_tcpci_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcpci_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_tcpci_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcpci_unregister_port to i32), ptr @__kstrtab_tcpci_unregister_port, ptr @__kstrtabns_tcpci_unregister_port }, section "___ksymtab_gpl+tcpci_unregister_port", align 4
@__initcall__kmod_tcpci__288_910_tcpci_i2c_driver_init6 = internal global ptr @tcpci_i2c_driver_init, section ".initcall6.init", align 4
@tcpci_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tcpci_probe, ptr @tcpci_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tcpci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tcpci_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tcpci_i2c_driver_exit = internal global ptr @tcpci_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [62 x i8] c"tcpci.description=USB Type-C Port Controller Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [40 x i8] c"tcpci.file=drivers/usb/typec/tcpm/tcpci\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [18 x i8] c"tcpci.license=GPL\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@tcpci_parse_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't find connector node.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcpci_parse_config\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tcpci_parse_config._entry_ptr = internal global ptr @tcpci_parse_config._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tcpci\00", [26 x i8] zeroinitializer }, align 32
@tcpci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,ptn5110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tcpci_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tcpci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tcpci_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tcpci_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tcpci:844:(&tcpci_regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 712, i32 7 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"tcpci_i2c_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 901, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 764, i32 9 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 766, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 903, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"tcpci_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 894, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"tcpci_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 887, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"tcpci_regmap_config\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 752, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [34 x i8] c"../drivers/usb/typec/tcpm/tcpci.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 844, i32 22 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_tcpci_i2c_driver_exit, ptr @__initcall__kmod_tcpci__288_910_tcpci_i2c_driver_init6, ptr @__ksymtab_tcpci_get_tcpm_port, ptr @__ksymtab_tcpci_irq, ptr @__ksymtab_tcpci_register_port, ptr @__ksymtab_tcpci_unregister_port, ptr @tcpci_i2c_driver_exit, ptr @tcpci_parse_config._entry, ptr @tcpci_parse_config._entry_ptr, ptr @.str, ptr @tcpci_i2c_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tcpci_of_match, ptr @tcpci_id, ptr @tcpci_probe._key, ptr @tcpci_regmap_config, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpci_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpci_parse_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpci_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpci_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpci_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tcpci_get_tcpm_port(ptr nocapture noundef readonly %tcpci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcpci_irq(ptr nocapture noundef readonly %tcpci) #1 align 64 {
entry:
  %val.addr.i135 = alloca i16, align 2
  %val.addr.i = alloca i16, align 2
  %status = alloca i16, align 2
  %raw = alloca i32, align 4
  %msg = alloca %struct.pd_message, align 2
  %cnt = alloca i32, align 4
  %header = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw) #7
  %1 = ptrtoint ptr %raw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %raw, align 4, !annotation !49
  %regmap.i = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %status, i32 noundef 2) #7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %status, align 2
  %6 = and i16 %5, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %7 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %val.addr.i, align 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i132 = call i32 @regmap_raw_write(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %val.addr.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %status, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool7.not = icmp eq i16 %12, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %port = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  call void @tcpm_cc_change(ptr noundef %14) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %status, align 2
  %17 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool12.not = icmp eq i16 %17, 0
  br i1 %tobool12.not, label %if.end9.if.end20_crit_edge, label %if.then13

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call14 = call i32 @regmap_read(ptr noundef %19, i32 noundef 20, ptr noundef nonnull %raw) #7
  %20 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %raw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %21)
  %cmp = icmp eq i32 %21, 255
  %port17 = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %22 = ptrtoint ptr %port17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port17, align 4
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  call void @tcpm_tcpc_reset(ptr noundef %23) #7
  br label %if.end20

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  call void @tcpm_vbus_change(ptr noundef %23) #7
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16, %if.end9.if.end20_crit_edge
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %status, align 2
  %26 = and i16 %25, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool23.not = icmp eq i16 %26, 0
  br i1 %tobool23.not, label %if.end20.if.end68_crit_edge, label %if.then24

if.end20.if.end68_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then24:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %msg) #7
  %27 = getelementptr inbounds %struct.pd_message, ptr %msg, i32 0, i32 1
  %28 = getelementptr inbounds i8, ptr %msg, i32 2
  %29 = call ptr @memset(ptr %28, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #7
  %30 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %cnt, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %header) #7
  %31 = ptrtoint ptr %header to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %header, align 2, !annotation !49
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call26 = call i32 @regmap_read(ptr noundef %33, i32 noundef 48, ptr noundef nonnull %cnt) #7
  %34 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cnt, align 4
  %36 = call i32 @llvm.usub.sat.i32(i32 %35, i32 3)
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i134 = call i32 @regmap_raw_read(ptr noundef %38, i32 noundef 50, ptr noundef nonnull %header, i32 noundef 2) #7
  %39 = ptrtoint ptr %header to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %header, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %msg, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %36)
  %cmp34 = icmp ugt i32 %36, 28
  br i1 %cmp34, label %if.end50.thread, label %if.end50, !prof !50

if.end50.thread:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 712, i32 noundef 9, ptr noundef null) #7
  br label %if.then62

if.end50:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp60.not = icmp ult i32 %35, 4
  br i1 %cmp60.not, label %if.end50.if.end65_crit_edge, label %if.end50.if.then62_crit_edge

if.end50.if.then62_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.end50.if.end65_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then62:                                        ; preds = %if.end50.if.then62_crit_edge, %if.end50.thread
  %spec.select140 = phi i32 [ 28, %if.end50.thread ], [ %36, %if.end50.if.then62_crit_edge ]
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call64 = call i32 @regmap_raw_read(ptr noundef %44, i32 noundef 52, ptr noundef %27, i32 noundef %spec.select140) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end50.if.end65_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i135)
  %45 = ptrtoint ptr %val.addr.i135 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 4, ptr %val.addr.i135, align 2
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call.i137 = call i32 @regmap_raw_write(ptr noundef %47, i32 noundef 16, ptr noundef nonnull %val.addr.i135, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i135)
  %port67 = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %48 = ptrtoint ptr %port67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port67, align 4
  call void @tcpm_pd_receive(ptr noundef %49, ptr noundef nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %header) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #7
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %msg) #7
  br label %if.end68

if.end68:                                         ; preds = %if.end65, %if.end20.if.end68_crit_edge
  %data = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 5
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %vbus_vsafe0v = getelementptr inbounds %struct.tcpci_data, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %vbus_vsafe0v to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %vbus_vsafe0v, align 4
  %53 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool70.not = icmp eq i8 %53, 0
  br i1 %tobool70.not, label %if.end68.if.end84_crit_edge, label %land.lhs.true

if.end68.if.end84_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true:                                    ; preds = %if.end68
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %status, align 2
  %56 = and i16 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool73.not = icmp eq i16 %56, 0
  br i1 %tobool73.not, label %land.lhs.true.if.end84_crit_edge, label %if.then74

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then74:                                        ; preds = %land.lhs.true
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %call76 = call i32 @regmap_read(ptr noundef %58, i32 noundef 32, ptr noundef nonnull %raw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true78, label %if.then74.if.end84_crit_edge

if.then74.if.end84_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true78:                                  ; preds = %if.then74
  %59 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %raw, align 4
  %and79 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %land.lhs.true78.if.end84_crit_edge, label %if.then81

land.lhs.true78.if.end84_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then81:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  %port82 = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %61 = ptrtoint ptr %port82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port82, align 4
  call void @tcpm_vbus_change(ptr noundef %62) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true78.if.end84_crit_edge, %if.then74.if.end84_crit_edge, %land.lhs.true.if.end84_crit_edge, %if.end68.if.end84_crit_edge
  %63 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %status, align 2
  %65 = and i16 %64, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool87.not = icmp eq i16 %65, 0
  br i1 %tobool87.not, label %if.end84.if.end90_crit_edge, label %if.then88

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %port89 = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %66 = ptrtoint ptr %port89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %port89, align 4
  call void @tcpm_pd_hard_reset(ptr noundef %67) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end84.if.end90_crit_edge
  %68 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %status, align 2
  %conv91 = zext i16 %69 to i32
  %and92 = and i32 %conv91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.else96, label %if.end90.if.end110.sink.split_crit_edge

if.end90.if.end110.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.sink.split

if.else96:                                        ; preds = %if.end90
  %and98 = and i32 %conv91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else102, label %if.else96.if.end110.sink.split_crit_edge

if.else96.if.end110.sink.split_crit_edge:         ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.sink.split

if.else102:                                       ; preds = %if.else96
  %and104 = and i32 %conv91, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.else102.if.end110_crit_edge, label %if.else102.if.end110.sink.split_crit_edge

if.else102.if.end110.sink.split_crit_edge:        ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.sink.split

if.else102.if.end110_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end110.sink.split:                             ; preds = %if.else102.if.end110.sink.split_crit_edge, %if.else96.if.end110.sink.split_crit_edge, %if.end90.if.end110.sink.split_crit_edge
  %.sink141 = phi i32 [ 0, %if.end90.if.end110.sink.split_crit_edge ], [ 1, %if.else96.if.end110.sink.split_crit_edge ], [ 2, %if.else102.if.end110.sink.split_crit_edge ]
  %port101 = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %70 = ptrtoint ptr %port101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port101, align 4
  call void @tcpm_pd_transmit_complete(ptr noundef %71, i32 noundef %.sink141) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %if.else102.if.end110_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_cc_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_tcpc_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_vbus_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_hard_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_transmit_complete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tcpci_register_port(ptr noundef %dev, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %data3 = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %data3, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %regmap4 = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regmap4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %regmap4, align 4
  %tcpc = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4
  %init = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tcpci_init, ptr %init, align 4
  %get_vbus = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %get_vbus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tcpci_get_vbus, ptr %get_vbus, align 4
  %set_vbus = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 9
  %7 = ptrtoint ptr %set_vbus to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tcpci_set_vbus, ptr %set_vbus, align 4
  %set_cc = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %set_cc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tcpci_set_cc, ptr %set_cc, align 4
  %apply_rc = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 5
  %9 = ptrtoint ptr %apply_rc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tcpci_apply_rc, ptr %apply_rc, align 4
  %get_cc = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %get_cc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tcpci_get_cc, ptr %get_cc, align 4
  %set_polarity = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 7
  %11 = ptrtoint ptr %set_polarity to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tcpci_set_polarity, ptr %set_polarity, align 4
  %set_vconn = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %set_vconn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tcpci_set_vconn, ptr %set_vconn, align 4
  %start_toggling = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 13
  %13 = ptrtoint ptr %start_toggling to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tcpci_start_toggling, ptr %start_toggling, align 4
  %set_pd_rx = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 11
  %14 = ptrtoint ptr %set_pd_rx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tcpci_set_pd_rx, ptr %set_pd_rx, align 4
  %set_roles = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 12
  %15 = ptrtoint ptr %set_roles to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tcpci_set_roles, ptr %set_roles, align 4
  %pd_transmit = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 15
  %16 = ptrtoint ptr %pd_transmit to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tcpci_pd_transmit, ptr %pd_transmit, align 4
  %set_bist_data = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 16
  %17 = ptrtoint ptr %set_bist_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tcpci_set_bist_data, ptr %set_bist_data, align 4
  %enable_frs = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 17
  %18 = ptrtoint ptr %enable_frs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tcpci_enable_frs, ptr %enable_frs, align 4
  %frs_sourcing_vbus = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 18
  %19 = ptrtoint ptr %frs_sourcing_vbus to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tcpci_frs_sourcing_vbus, ptr %frs_sourcing_vbus, align 4
  %set_partner_usb_comm_capable = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 22
  %20 = ptrtoint ptr %set_partner_usb_comm_capable to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tcpci_set_partner_usb_comm_capable, ptr %set_partner_usb_comm_capable, align 4
  %auto_discharge_disconnect = getelementptr inbounds %struct.tcpci_data, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %auto_discharge_disconnect to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %auto_discharge_disconnect, align 4
  %22 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %if.end.if.end27_crit_edge, label %if.then22

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %enable_auto_vbus_discharge = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 19
  %23 = ptrtoint ptr %enable_auto_vbus_discharge to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tcpci_enable_auto_vbus_discharge, ptr %enable_auto_vbus_discharge, align 4
  %set_auto_vbus_discharge_threshold = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 20
  %24 = ptrtoint ptr %set_auto_vbus_discharge_threshold to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tcpci_set_auto_vbus_discharge_threshold, ptr %set_auto_vbus_discharge_threshold, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end.if.end27_crit_edge
  %25 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data3, align 4
  %vbus_vsafe0v = getelementptr inbounds %struct.tcpci_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %vbus_vsafe0v to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load29 = load i8, ptr %vbus_vsafe0v, align 4
  %28 = and i8 %bf.load29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not = icmp eq i8 %28, 0
  br i1 %tobool32.not, label %if.end27.if.end35_crit_edge, label %if.then33

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %is_vbus_vsafe0v = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 4, i32 21
  %29 = ptrtoint ptr %is_vbus_vsafe0v to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tcpci_is_vbus_vsafe0v, ptr %is_vbus_vsafe0v, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27.if.end35_crit_edge
  %controls_vbus.i = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %controls_vbus.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %controls_vbus.i, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %call.i86 = tail call ptr @device_get_named_child_node(ptr noundef %32, ptr noundef nonnull @.str.1) #7
  %33 = ptrtoint ptr %tcpc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i86, ptr %tcpc, align 4
  %tobool.not.i = icmp eq ptr %call.i86, null
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call ptr @tcpm_register_port(ptr noundef %35, ptr noundef %tcpc) #7
  %port = getelementptr inbounds %struct.tcpci, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call42, ptr %port, align 4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr %call42, ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then37, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then37 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end39 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_init(ptr noundef %tcpc) #1 align 64 {
entry:
  %val.addr.i79 = alloca i16, align 2
  %val.addr.i = alloca i16, align 2
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %tcpc, i32 -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg, align 4, !annotation !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub82 = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub82)
  %cmp83 = icmp sgt i32 %sub82, -1
  br i1 %cmp83, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 30, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end5

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end5:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end5.while.body_crit_edge, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub6 = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp7 = icmp slt i32 %sub6, 0
  br i1 %cmp7, label %while.end.cleanup_crit_edge, label %if.end9

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %while.end
  %data = getelementptr i8, ptr %tcpc, i32 92
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %init = getelementptr inbounds %struct.tcpci_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end9.if.end19_crit_edge, label %if.then11

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11:                                        ; preds = %if.end9
  %call15 = call i32 %12(ptr noundef %add.ptr.i, ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then11.cleanup_crit_edge, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %val.addr.i, align 2
  %regmap.i = getelementptr i8, ptr %tcpc, i32 -8
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %15, i32 noundef 16, ptr noundef nonnull %val.addr.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %controls_vbus = getelementptr i8, ptr %tcpc, i32 -4
  %16 = ptrtoint ptr %controls_vbus to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %controls_vbus, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool24.not = icmp eq i8 %17, 0
  %. = select i1 %tobool24.not, i32 0, i32 4
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %., ptr %reg, align 4
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call28 = call i32 @regmap_write(ptr noundef %20, i32 noundef 20, i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end23.cleanup_crit_edge, label %if.end31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call33 = call i32 @regmap_write(ptr noundef %22, i32 noundef 35, i32 noundef 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %23 = ptrtoint ptr %controls_vbus to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %controls_vbus, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool38.not = icmp eq i8 %24, 0
  %spec.store.select = select i1 %tobool38.not, i32 125, i32 127
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select, ptr %reg, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %vbus_vsafe0v = getelementptr inbounds %struct.tcpci_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %vbus_vsafe0v to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %vbus_vsafe0v, align 4
  %29 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool42.not = icmp eq i8 %29, 0
  br i1 %tobool42.not, label %if.end36.if.end50_crit_edge, label %if.then43

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then43:                                        ; preds = %if.end36
  %or44 = or i32 %spec.store.select, 8192
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or44, ptr %reg, align 4
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call46 = call i32 @regmap_write(ptr noundef %32, i32 noundef 22, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then43.cleanup_crit_edge, label %if.then43.if.end50_crit_edge

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.then43.if.end50_crit_edge, %if.end36.if.end50_crit_edge
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg, align 4
  %conv = trunc i32 %34 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i79)
  %35 = ptrtoint ptr %val.addr.i79 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %val.addr.i79, align 2
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call.i81 = call i32 @regmap_raw_write(ptr noundef %37, i32 noundef 18, ptr noundef nonnull %val.addr.i79, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i79)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then43.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i81, %if.end50 ], [ -110, %while.end.cleanup_crit_edge ], [ %call15, %if.then11.cleanup_crit_edge ], [ %call.i, %if.end19.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %call46, %if.then43.cleanup_crit_edge ], [ %call2, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_get_vbus(ptr nocapture noundef readonly %tcpc) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !49
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 30, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = lshr i32 %4, 2
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_vbus(ptr noundef %tcpc, i1 noundef zeroext %source, i1 noundef zeroext %sink) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %tcpc, i32 92
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %set_vbus = getelementptr inbounds %struct.tcpci_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %tcpc, i32 -16
  %call7 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %1, i1 noundef zeroext %source, i1 noundef zeroext %sink) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.then.if.end10_crit_edge, label %if.then8

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.smin.i32(i32 %call7, i32 0)
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  br i1 %source, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 35, i32 noundef 102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.cleanup_crit_edge, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  br i1 %sink, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  %regmap20 = getelementptr i8, ptr %tcpc, i32 -8
  %7 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap20, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 35, i32 noundef 68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then19.cleanup_crit_edge, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  br i1 %source, label %if.then27, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27:                                        ; preds = %if.end25
  %regmap28 = getelementptr i8, ptr %tcpc, i32 -8
  %9 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap28, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 35, i32 noundef 119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then27.cleanup_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.then27.if.end33_crit_edge, %if.end25.if.end33_crit_edge
  br i1 %sink, label %if.then35, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then35:                                        ; preds = %if.end33
  %regmap36 = getelementptr i8, ptr %tcpc, i32 -8
  %11 = ptrtoint ptr %regmap36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap36, align 4
  %call37 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 35, i32 noundef 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then35.cleanup_crit_edge, label %if.then35.if.end41_crit_edge

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then35.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %4, %if.then8 ], [ 0, %if.end41 ], [ %call13, %if.then12.cleanup_crit_edge ], [ %call21, %if.then19.cleanup_crit_edge ], [ %call29, %if.then27.cleanup_crit_edge ], [ %call37, %if.then35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_cc(ptr nocapture noundef readonly %tcpc, i32 noundef %cc) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !49
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 30, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %6, i32 noundef 25, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then4.cleanup_crit_edge, label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and10 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp ne i32 %and10, 0
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %if.end.if.end14_crit_edge
  %cmp22 = phi i1 [ false, %if.end.if.end14_crit_edge ], [ %tobool11.not, %if.end9 ]
  %9 = zext i32 %cc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cc, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 3, label %sw.bb16
    i32 4, label %sw.bb17
    i32 5, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reg, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %reg, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %reg, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 21, ptr %reg, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 37, ptr %reg, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15, ptr %reg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb
  br i1 %tobool.not, label %sw.epilog.if.end28_crit_edge, label %if.then21

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then21:                                        ; preds = %sw.epilog
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %17, 3
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %reg, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %or26 = or i32 %17, 12
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or26, ptr %reg, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23, %sw.epilog.if.end28_crit_edge
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  %call30 = call i32 @regmap_write(ptr noundef %21, i32 noundef 26, i32 noundef %23) #7
  %24 = call i32 @llvm.smin.i32(i32 %call30, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ %24, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_apply_rc(ptr nocapture noundef readonly %tcpc, i32 noundef %cc, i32 noundef %polarity) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !49
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 26, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = lshr i32 %4, 2
  %5 = xor i32 %and, %4
  %6 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not = icmp eq i32 %6, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polarity)
  %cmp8 = icmp eq i32 %polarity, 0
  %cond = select i1 %cmp8, i32 12, i32 3
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 26, i32 noundef %cond, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_get_cc(ptr nocapture noundef readonly %tcpc, ptr nocapture noundef writeonly %cc1, ptr nocapture noundef writeonly %cc2) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  %role_control = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %role_control) #7
  %1 = ptrtoint ptr %role_control to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %role_control, align 4, !annotation !49
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %role_control) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %5, i32 noundef 29, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %and = and i32 %7, 3
  %and7 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %lor.rhs, label %if.end6.lor.end_crit_edge

if.end6.lor.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %role_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %role_control, align 4
  %and8 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.rhs, label %lor.rhs.lor.end_crit_edge

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %and10 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 2
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %if.end6.lor.end_crit_edge
  %10 = phi i1 [ true, %if.end6.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ], [ %cmp11, %land.rhs ]
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and, label %lor.end.sw.default.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb4.i
  ]

lor.end.sw.default.i_crit_edge:                   ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.bb.i:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %10, i32 3, i32 1
  br label %tcpci_to_typec_cc.exit

sw.bb1.i:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %cond3.i = select i1 %10, i32 4, i32 2
  br label %tcpci_to_typec_cc.exit

sw.bb4.i:                                         ; preds = %lor.end
  br i1 %10, label %sw.bb4.i.tcpci_to_typec_cc.exit_crit_edge, label %sw.bb4.i.sw.default.i_crit_edge

sw.bb4.i.sw.default.i_crit_edge:                  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.bb4.i.tcpci_to_typec_cc.exit_crit_edge:        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcpci_to_typec_cc.exit

sw.default.i:                                     ; preds = %sw.bb4.i.sw.default.i_crit_edge, %lor.end.sw.default.i_crit_edge
  br label %tcpci_to_typec_cc.exit

tcpci_to_typec_cc.exit:                           ; preds = %sw.default.i, %sw.bb4.i.tcpci_to_typec_cc.exit_crit_edge, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ %cond3.i, %sw.bb1.i ], [ %cond.i, %sw.bb.i ], [ 5, %sw.bb4.i.tcpci_to_typec_cc.exit_crit_edge ]
  %12 = ptrtoint ptr %cc1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %cc1, align 4
  %shr13 = lshr i32 %7, 2
  %and14 = and i32 %shr13, 3
  br i1 %tobool.not, label %lor.rhs17, label %tcpci_to_typec_cc.exit.lor.end24_crit_edge

tcpci_to_typec_cc.exit.lor.end24_crit_edge:       ; preds = %tcpci_to_typec_cc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end24

lor.rhs17:                                        ; preds = %tcpci_to_typec_cc.exit
  %13 = ptrtoint ptr %role_control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %role_control, align 4
  %and18 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.rhs20, label %lor.rhs17.lor.end24_crit_edge

lor.rhs17.lor.end24_crit_edge:                    ; preds = %lor.rhs17
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end24

land.rhs20:                                       ; preds = %lor.rhs17
  call void @__sanitizer_cov_trace_pc() #9
  %and21 = and i32 %14, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 8
  br label %lor.end24

lor.end24:                                        ; preds = %land.rhs20, %lor.rhs17.lor.end24_crit_edge, %tcpci_to_typec_cc.exit.lor.end24_crit_edge
  %15 = phi i1 [ true, %tcpci_to_typec_cc.exit.lor.end24_crit_edge ], [ false, %lor.rhs17.lor.end24_crit_edge ], [ %cmp22, %land.rhs20 ]
  %16 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and14, label %lor.end24.sw.default.i38_crit_edge [
    i32 1, label %sw.bb.i34
    i32 2, label %sw.bb1.i36
    i32 3, label %sw.bb4.i37
  ]

lor.end24.sw.default.i38_crit_edge:               ; preds = %lor.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i38

sw.bb.i34:                                        ; preds = %lor.end24
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i33 = select i1 %15, i32 3, i32 1
  br label %tcpci_to_typec_cc.exit40

sw.bb1.i36:                                       ; preds = %lor.end24
  call void @__sanitizer_cov_trace_pc() #9
  %cond3.i35 = select i1 %15, i32 4, i32 2
  br label %tcpci_to_typec_cc.exit40

sw.bb4.i37:                                       ; preds = %lor.end24
  br i1 %15, label %sw.bb4.i37.tcpci_to_typec_cc.exit40_crit_edge, label %sw.bb4.i37.sw.default.i38_crit_edge

sw.bb4.i37.sw.default.i38_crit_edge:              ; preds = %sw.bb4.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i38

sw.bb4.i37.tcpci_to_typec_cc.exit40_crit_edge:    ; preds = %sw.bb4.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcpci_to_typec_cc.exit40

sw.default.i38:                                   ; preds = %sw.bb4.i37.sw.default.i38_crit_edge, %lor.end24.sw.default.i38_crit_edge
  br label %tcpci_to_typec_cc.exit40

tcpci_to_typec_cc.exit40:                         ; preds = %sw.default.i38, %sw.bb4.i37.tcpci_to_typec_cc.exit40_crit_edge, %sw.bb1.i36, %sw.bb.i34
  %retval.0.i39 = phi i32 [ 0, %sw.default.i38 ], [ %cond3.i35, %sw.bb1.i36 ], [ %cond.i33, %sw.bb.i34 ], [ 5, %sw.bb4.i37.tcpci_to_typec_cc.exit40_crit_edge ]
  %17 = ptrtoint ptr %cc2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i39, ptr %cc2, align 4
  br label %cleanup

cleanup:                                          ; preds = %tcpci_to_typec_cc.exit40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tcpci_to_typec_cc.exit40 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %role_control) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_polarity(ptr nocapture noundef readonly %tcpc, i32 noundef %polarity) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  %cc1 = alloca i32, align 4
  %cc2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc1) #7
  %1 = ptrtoint ptr %cc1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cc1, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc2) #7
  %2 = ptrtoint ptr %cc2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cc2, align 4, !annotation !49
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @tcpci_get_cc(ptr noundef %tcpc, ptr noundef nonnull %cc1, ptr noundef nonnull %cc2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %polarity)
  %cmp25 = icmp eq i32 %polarity, 1
  br i1 %tobool.not, label %if.end24, label %if.then6

if.then6:                                         ; preds = %if.end5
  br i1 %cmp25, label %if.then9, label %if.else15

if.then9:                                         ; preds = %if.then6
  %and10 = and i32 %6, -77
  %7 = ptrtoint ptr %cc2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cc2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp11 = icmp eq i32 %8, 2
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and10, 4
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %reg, align 4
  br label %if.then26

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %and10, 8
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or13, ptr %reg, align 4
  br label %if.then26

if.else15:                                        ; preds = %if.then6
  %and16 = and i32 %6, -68
  %11 = ptrtoint ptr %cc1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cc1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp17 = icmp eq i32 %12, 2
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  %or19 = or i32 %and16, 1
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or19, ptr %reg, align 4
  br label %if.else28

if.else20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  %or21 = or i32 %and16, 2
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or21, ptr %reg, align 4
  br label %if.else28

if.end24:                                         ; preds = %if.end5
  br i1 %cmp25, label %if.end24.if.then26_crit_edge, label %if.end24.if.else28_crit_edge

if.end24.if.else28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else28

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.else, %if.then12
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %or27 = or i32 %16, 3
  br label %if.end30

if.else28:                                        ; preds = %if.end24.if.else28_crit_edge, %if.else20, %if.then18
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %or29 = or i32 %18, 12
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %cmp2554 = phi i32 [ 0, %if.else28 ], [ 1, %if.then26 ]
  %storemerge = phi i32 [ %or29, %if.else28 ], [ %or27, %if.then26 ]
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %reg, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_write(ptr noundef %21, i32 noundef 26, i32 noundef %storemerge) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call38 = call i32 @regmap_write(ptr noundef %23, i32 noundef 25, i32 noundef %cmp2554) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end35 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_vconn(ptr noundef %tcpc, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %tcpc, i32 92
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %set_vconn = getelementptr inbounds %struct.tcpci_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %set_vconn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_vconn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %tcpc, i32 -16
  %call5 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %1, i1 noundef zeroext %enable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %cond = zext i1 %enable to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 28, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ %call5, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_start_toggling(ptr noundef %tcpc, i32 noundef %port_type, i32 noundef %cc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %tcpc, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %port_type)
  %cmp.not = icmp eq i32 %port_type, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr i8, ptr %tcpc, i32 92
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %start_drp_toggling = getelementptr inbounds %struct.tcpci_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %start_drp_toggling to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_drp_toggling, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then1

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then1:                                         ; preds = %if.end
  %call5 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %1, i32 noundef %cc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then1.cleanup_crit_edge, label %if.then1.if.end9_crit_edge

if.then1.if.end9_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then1.if.end9_crit_edge, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cc)
  %switch.selectcmp = icmp eq i32 %cc, 4
  %switch.select = select i1 %switch.selectcmp, i32 80, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cc)
  %switch.selectcmp42 = icmp eq i32 %cc, 5
  %switch.select43 = select i1 %switch.selectcmp42, i32 96, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cc)
  %cmp14 = icmp eq i32 %cc, 2
  %reg.1.v = select i1 %cmp14, i32 10, i32 5
  %reg.1 = or i32 %switch.select43, %reg.1.v
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 26, i32 noundef %reg.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end9.cleanup_crit_edge, label %if.end22

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 35, i32 noundef 153) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end9.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ -95, %entry.cleanup_crit_edge ], [ %call5, %if.then1.cleanup_crit_edge ], [ %call19, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_pd_rx(ptr nocapture noundef readonly %tcpc, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select = select i1 %enable, i32 33, i32 0
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 47, i32 noundef %spec.select) #7
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_roles(ptr nocapture noundef readonly %tcpc, i1 noundef zeroext %attached, i32 noundef %role, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp = icmp eq i32 %role, 1
  %spec.select = select i1 %cmp, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data)
  %cmp1 = icmp eq i32 %data, 1
  %or3 = or i32 %spec.select, 8
  %reg.1 = select i1 %cmp1, i32 %or3, i32 %spec.select
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 46, i32 noundef %reg.1) #7
  %2 = tail call i32 @llvm.smin.i32(i32 %call5, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_pd_transmit(ptr nocapture noundef readonly %tcpc, i32 noundef %type, ptr noundef %msg, i32 noundef %negotiated_rev) #1 align 64 {
entry:
  %val.addr.i = alloca i16, align 2
  %buf = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %entry.cond.end7_crit_edge, label %cond.true4

entry.cond.end7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end7

cond.true4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = lshr i16 %2, 10
  %4 = and i16 %3, 28
  %mul = zext i16 %4 to i32
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true4, %entry.cond.end7_crit_edge
  %cond107 = phi i16 [ %2, %cond.true4 ], [ 0, %entry.cond.end7_crit_edge ]
  %cond8 = phi i32 [ %mul, %cond.true4 ], [ 0, %entry.cond.end7_crit_edge ]
  %data = getelementptr i8, ptr %tcpc, i32 92
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %TX_BUF_BYTE_x_hidden = getelementptr inbounds %struct.tcpci_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %TX_BUF_BYTE_x_hidden to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %TX_BUF_BYTE_x_hidden, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool9.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end7
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buf) #7
  %8 = getelementptr inbounds i8, ptr %buf, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 30)
  %10 = trunc i32 %cond8 to i8
  %conv10 = or i8 %10, 2
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %buf, align 1
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14 = getelementptr inbounds [31 x i8], ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %msg, align 1
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %arrayidx14, align 1
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8)
  %cmp.not = icmp eq i32 %cond8, 0
  br i1 %cmp.not, label %if.end.if.end23_crit_edge, label %if.then20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr inbounds [31 x i8], ptr %buf, i32 0, i32 3
  %15 = getelementptr inbounds %struct.pd_message, ptr %msg, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %arrayidx22, ptr %15, i32 %cond8)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end.if.end23_crit_edge
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %conv26 = and i32 %cond8, 252
  %conv28 = or i32 %conv26, 3
  %call29 = call i32 @regmap_raw_write(ptr noundef %18, i32 noundef 81, ptr noundef nonnull %buf, i32 noundef %conv28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buf) #7
  br i1 %cmp30, label %if.end23.cleanup68_crit_edge, label %if.end23.if.end57_crit_edge

if.end23.if.end57_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end23.cleanup68_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.else:                                          ; preds = %cond.end7
  %regmap35 = getelementptr i8, ptr %tcpc, i32 -8
  %19 = ptrtoint ptr %regmap35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap35, align 4
  %add36 = or i32 %cond8, 2
  %call37 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 81, i32 noundef %add36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.else.cleanup68_crit_edge, label %if.end41

if.else.cleanup68_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end41:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %21 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %cond107, ptr %val.addr.i, align 2
  %22 = ptrtoint ptr %regmap35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap35, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %23, i32 noundef 82, ptr noundef nonnull %val.addr.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp43 = icmp slt i32 %call.i, 0
  br i1 %cmp43, label %if.end41.cleanup68_crit_edge, label %if.end46

if.end41.cleanup68_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8)
  %cmp47.not = icmp eq i32 %cond8, 0
  br i1 %cmp47.not, label %if.end46.if.end57_crit_edge, label %if.then49

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then49:                                        ; preds = %if.end46
  %24 = ptrtoint ptr %regmap35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap35, align 4
  %26 = getelementptr inbounds %struct.pd_message, ptr %msg, i32 0, i32 1
  %call51 = call i32 @regmap_raw_write(ptr noundef %25, i32 noundef 84, ptr noundef %26, i32 noundef %cond8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then49.cleanup68_crit_edge, label %if.then49.if.end57_crit_edge

if.then49.if.end57_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then49.cleanup68_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end57:                                         ; preds = %if.then49.if.end57_crit_edge, %if.end46.if.end57_crit_edge, %if.end23.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %negotiated_rev)
  %cmp58.inv = icmp ult i32 %negotiated_rev, 2
  %cond60 = select i1 %cmp58.inv, i32 48, i32 32
  %or = or i32 %cond60, %type
  %regmap62 = getelementptr i8, ptr %tcpc, i32 -8
  %27 = ptrtoint ptr %regmap62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap62, align 4
  %call63 = call i32 @regmap_write(ptr noundef %28, i32 noundef 80, i32 noundef %or) #7
  %29 = call i32 @llvm.smin.i32(i32 %call63, i32 0)
  br label %cleanup68

cleanup68:                                        ; preds = %if.end57, %if.then49.cleanup68_crit_edge, %if.end41.cleanup68_crit_edge, %if.else.cleanup68_crit_edge, %if.end23.cleanup68_crit_edge
  %retval.1 = phi i32 [ %call29, %if.end23.cleanup68_crit_edge ], [ %call37, %if.else.cleanup68_crit_edge ], [ %call.i, %if.end41.cleanup68_crit_edge ], [ %call51, %if.then49.cleanup68_crit_edge ], [ %29, %if.end57 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_bist_data(ptr nocapture noundef readonly %tcpc, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %cond = select i1 %enable, i32 2, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 25, i32 noundef 2, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_enable_frs(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  %val.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %enable, i16 0, i16 140
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %val.addr.i, align 2
  %regmap.i = getelementptr i8, ptr %dev, i32 -8
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %2, i32 noundef 114, ptr noundef nonnull %val.addr.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %cond5 = select i1 %enable, i32 128, i32 0
  %call.i12 = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 28, i32 noundef 128, i32 noundef %cond5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i12, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcpci_frs_sourcing_vbus(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %dev, i32 92
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %frs_sourcing_vbus = getelementptr inbounds %struct.tcpci_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %frs_sourcing_vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frs_sourcing_vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  tail call void %3(ptr noundef %add.ptr.i, ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcpci_set_partner_usb_comm_capable(ptr noundef %tcpc, i1 noundef zeroext %capable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %tcpc, i32 92
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %set_partner_usb_comm_capable = getelementptr inbounds %struct.tcpci_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %set_partner_usb_comm_capable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_partner_usb_comm_capable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %tcpc, i32 -16
  tail call void %3(ptr noundef %add.ptr.i, ptr noundef %1, i1 noundef zeroext %capable) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_enable_auto_vbus_discharge(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %cond = select i1 %enable, i32 16, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 16, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_set_auto_vbus_discharge_threshold(ptr nocapture noundef readonly %dev, i32 noundef %mode, i1 noundef zeroext %pps_active, i32 noundef %requested_vbus_voltage_mv) #1 align 64 {
entry:
  %val.addr.i = alloca i16, align 2
  %pwr_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwr_ctrl) #7
  %0 = ptrtoint ptr %pwr_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pwr_ctrl, align 4, !annotation !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_vbus_voltage_mv)
  %cmp = icmp eq i32 %requested_vbus_voltage_mv, 0
  br i1 %cmp, label %entry.write_thresh_crit_edge, label %if.end

entry.write_thresh_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_thresh

if.end:                                           ; preds = %entry
  %regmap = getelementptr i8, ptr %dev, i32 -8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 28, ptr noundef nonnull %pwr_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %pwr_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pwr_ctrl, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp6 = icmp eq i32 %mode, 3
  %or.cond = and i1 %cmp6, %tobool.not
  br i1 %or.cond, label %if.then7, label %if.end4.write_thresh_crit_edge

if.end4.write_thresh_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_thresh

if.then7:                                         ; preds = %if.end4
  %mul = mul i32 %requested_vbus_voltage_mv, 95
  %div = udiv i32 %mul, 100
  %5 = mul nuw i32 %div, 90
  %. = select i1 %pps_active, i32 -76500, i32 -112500
  %mul18 = add i32 %5, %.
  %div24 = udiv i32 %mul18, 2500
  call void @__sanitizer_cov_trace_const_cmp4(i32 2559999, i32 %mul18)
  %cmp25 = icmp ugt i32 %mul18, 2559999
  br i1 %cmp25, label %if.then7.cleanup_crit_edge, label %if.then7.write_thresh_crit_edge

if.then7.write_thresh_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_thresh

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

write_thresh:                                     ; preds = %if.then7.write_thresh_crit_edge, %if.end4.write_thresh_crit_edge, %entry.write_thresh_crit_edge
  %threshold.1 = phi i32 [ 0, %entry.write_thresh_crit_edge ], [ %div24, %if.then7.write_thresh_crit_edge ], [ 140, %if.end4.write_thresh_crit_edge ]
  %conv = trunc i32 %threshold.1 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %6 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %val.addr.i, align 2
  %regmap.i = getelementptr i8, ptr %dev, i32 -8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %8, i32 noundef 114, ptr noundef nonnull %val.addr.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %write_thresh, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %write_thresh ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr_ctrl) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tcpci_is_vbus_vsafe0v(ptr nocapture noundef readonly %tcpc) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !49
  %regmap = getelementptr i8, ptr %tcpc, i32 -8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcpm_register_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcpci_unregister_port(ptr nocapture noundef readonly %tcpci) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.tcpci, ptr %tcpci, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call void @tcpm_unregister_port(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_unregister_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_i2c_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tcpci_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcpci_i2c_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tcpci_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_probe(ptr noundef %client, ptr nocapture noundef readnone %i2c_id) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %val, align 2
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tcpci_regmap_config, ptr noundef nonnull @tcpci_probe._key, ptr noundef nonnull @.str.7) #7
  %data = getelementptr inbounds %struct.tcpci_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %data, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call12 = call i32 @regmap_raw_write(ptr noundef %call1, i32 noundef 18, ptr noundef nonnull %val, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call17 = call ptr @tcpci_register_port(ptr noundef %dev, ptr noundef %data)
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call17, ptr %call.i, align 4
  %cmp.i54 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.dev_name.exit_crit_edge

if.end23.dev_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end23.dev_name.exit_crit_edge ]
  %call27 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %7, ptr noundef null, ptr noundef nonnull @_tcpci_irq, i32 noundef 8200, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %port.i = getelementptr inbounds %struct.tcpci, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i, align 4
  call void @tcpm_unregister_port(ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %dev_name.exit.cleanup_crit_edge, %if.then20, %if.end9.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %5, %if.then20 ], [ %call27, %if.then29 ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpci_remove(ptr nocapture noundef readonly %client) #1 align 64 {
entry:
  %val.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i)
  %4 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %val.addr.i, align 2
  %regmap.i = getelementptr inbounds %struct.tcpci, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %6, i32 noundef 18, ptr noundef nonnull %val.addr.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %port.i = getelementptr inbounds %struct.tcpci, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  call void @tcpm_unregister_port(ptr noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_tcpci_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %call = tail call i32 @tcpci_irq(ptr noundef %1)
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_tcpci_get_tcpm_port, !1, !"__ksymtab_tcpci_get_tcpm_port", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 58, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 712, i32 7}
!4 = !{ptr @__ksymtab_tcpci_irq, !5, !"__ksymtab_tcpci_irq", i1 false, i1 false}
!5 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 743, i32 1}
!6 = !{ptr @__ksymtab_tcpci_register_port, !7, !"__ksymtab_tcpci_register_port", i1 false, i1 false}
!7 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 825, i32 1}
!8 = !{ptr @__ksymtab_tcpci_unregister_port, !9, !"__ksymtab_tcpci_unregister_port", i1 false, i1 false}
!9 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 831, i32 1}
!10 = !{ptr @__initcall__kmod_tcpci__288_910_tcpci_i2c_driver_init6, !11, !"__initcall__kmod_tcpci__288_910_tcpci_i2c_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 910, i32 1}
!12 = !{ptr @__exitcall_tcpci_i2c_driver_exit, !11, !"__exitcall_tcpci_i2c_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description289, !14, !"__UNIQUE_ID_description289", i1 false, i1 false}
!14 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 912, i32 1}
!15 = !{ptr @__UNIQUE_ID_file290, !16, !"__UNIQUE_ID_file290", i1 false, i1 false}
!16 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 913, i32 1}
!17 = !{ptr @__UNIQUE_ID_license291, !16, !"__UNIQUE_ID_license291", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 764, i32 9}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 766, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tcpci_parse_config._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @tcpci_parse_config._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 903, i32 11}
!29 = !{ptr @tcpci_i2c_driver, !30, !"tcpci_i2c_driver", i1 false, i1 false}
!30 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 901, i32 26}
!31 = !{ptr @tcpci_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 844, i32 22}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tcpci_regmap_config, !35, !"tcpci_regmap_config", i1 false, i1 false}
!35 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 752, i32 35}
!36 = !{ptr @tcpci_of_match, !37, !"tcpci_of_match", i1 false, i1 false}
!37 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 894, i32 34}
!38 = !{ptr @tcpci_id, !39, !"tcpci_id", i1 false, i1 false}
!39 = !{!"../drivers/usb/typec/tcpm/tcpci.c", i32 887, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i8 0, i8 2}
