; ModuleID = '/llk/IR_all_yes/drivers/soc/aspeed/aspeed-lpc-snoop.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-lpc-snoop.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_lpc_snoop_model_data = type { i32 }
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
%struct.aspeed_lpc_snoop = type { ptr, i32, ptr, [2 x %struct.aspeed_lpc_snoop_channel] }
%struct.aspeed_lpc_snoop_channel = type { %struct.kfifo, %struct.wait_queue_head, %struct.miscdevice }
%struct.kfifo = type { %union.anon.71, [0 x i8] }
%union.anon.71 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_aspeed_lpc_snoop__232_375_aspeed_lpc_snoop_driver_init6 = internal global ptr @aspeed_lpc_snoop_driver_init, section ".initcall6.init", align 4
@aspeed_lpc_snoop_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_lpc_snoop_probe, ptr @aspeed_lpc_snoop_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_lpc_snoop_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_lpc_snoop_driver_exit = internal global ptr @aspeed_lpc_snoop_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [58 x i8] c"aspeed_lpc_snoop.file=drivers/soc/aspeed/aspeed-lpc-snoop\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [29 x i8] c"aspeed_lpc_snoop.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [61 x i8] c"aspeed_lpc_snoop.author=Robert Lippert <rlippert@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [84 x i8] c"aspeed_lpc_snoop.description=Linux driver to control Aspeed LPC snoop functionality\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aspeed-lpc-snoop\00", [47 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-lpc-snoop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-lpc-snoop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-lpc-snoop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2400-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2500-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2600-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 278, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported LPC device binding\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed_lpc_snoop_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/soc/aspeed/aspeed-lpc-snoop.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_probe._entry_ptr = internal global ptr @aspeed_lpc_snoop_probe._entry, section ".printk_index", align 4
@aspeed_lpc_snoop_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 284, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Couldn't get regmap\0A\00", [43 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_probe._entry_ptr.11 = internal global ptr @aspeed_lpc_snoop_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snoop-ports\00", [20 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 292, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no snoop ports configured\0A\00", [37 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_probe._entry_ptr.15 = internal global ptr @aspeed_lpc_snoop_probe._entry.13, section ".printk_index", align 4
@aspeed_lpc_snoop_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 300, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't get clock\0A\00", [44 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_probe._entry_ptr.18 = internal global ptr @aspeed_lpc_snoop_probe._entry.16, section ".printk_index", align 4
@aspeed_lpc_snoop_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 305, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't enable clock\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_probe._entry_ptr.21 = internal global ptr @aspeed_lpc_snoop_probe._entry.19, section ".printk_index", align 4
@aspeed_lpc_snoop_config_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 177, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aspeed_lpc_snoop_config_irq\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aspeed_lpc_snoop_config_irq._entry_ptr = internal global ptr @aspeed_lpc_snoop_config_irq._entry, section ".printk_index", align 4
@aspeed_lpc_enable_snoop.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&lpc_snoop->chan[channel].wq\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@snoop_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @snoop_file_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snoop_file_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ast2400_model_data = internal constant { %struct.aspeed_lpc_snoop_model_data, [28 x i8] } zeroinitializer, align 32
@ast2500_model_data = internal constant { %struct.aspeed_lpc_snoop_model_data, [28 x i8] } { %struct.aspeed_lpc_snoop_model_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"aspeed_lpc_snoop_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 366, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 368, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"aspeed_lpc_snoop_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 356, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 275, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 276, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 277, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 278, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 284, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 290, i32 48 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 292, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 300, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 305, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 177, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 194, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 203, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"snoop_fops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 112, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant [19 x i8] c"ast2400_model_data\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 348, i32 49 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"ast2500_model_data\00", align 1
@___asan_gen_.119 = private constant [41 x i8] c"../drivers/soc/aspeed/aspeed-lpc-snoop.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 352, i32 49 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_aspeed_lpc_snoop_driver_exit, ptr @__initcall__kmod_aspeed_lpc_snoop__232_375_aspeed_lpc_snoop_driver_init6, ptr @aspeed_lpc_snoop_config_irq._entry, ptr @aspeed_lpc_snoop_config_irq._entry_ptr, ptr @aspeed_lpc_snoop_driver_exit, ptr @aspeed_lpc_snoop_probe._entry, ptr @aspeed_lpc_snoop_probe._entry.13, ptr @aspeed_lpc_snoop_probe._entry.16, ptr @aspeed_lpc_snoop_probe._entry.19, ptr @aspeed_lpc_snoop_probe._entry.9, ptr @aspeed_lpc_snoop_probe._entry_ptr, ptr @aspeed_lpc_snoop_probe._entry_ptr.11, ptr @aspeed_lpc_snoop_probe._entry_ptr.15, ptr @aspeed_lpc_snoop_probe._entry_ptr.18, ptr @aspeed_lpc_snoop_probe._entry_ptr.21, ptr @aspeed_lpc_snoop_driver, ptr @.str, ptr @aspeed_lpc_snoop_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @aspeed_lpc_enable_snoop.__key, ptr @.str.25, ptr @.str.26, ptr @snoop_fops, ptr @ast2400_model_data, ptr @ast2500_model_data], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_snoop_config_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_enable_snoop.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoop_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_model_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_model_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_snoop_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_lpc_snoop_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_lpc_snoop_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_lpc_snoop_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_snoop_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %port, align 4, !annotation !74
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 236, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.end:                                           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call ptr @syscon_node_to_regmap(ptr noundef %4) #5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node21 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node21, align 8
  %call22 = call i32 @of_property_read_u32_index(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull %port) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %call29 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call29, ptr %clk, align 4
  %cmp.i109 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.end28
  %cmp.not = icmp eq ptr %call29, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then32.cleanup_crit_edge, label %do.end38

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %call.i110 = call i32 @clk_prepare(ptr noundef %call29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.do.end47_crit_edge

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

if.end.i:                                         ; preds = %if.end40
  %call1.i = call i32 @clk_enable(ptr noundef %call29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end48, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call29) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then3.i, %if.end40.do.end47_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i110, %if.end40.do.end47_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end.i
  %call.i111 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq.i = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i111, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i112, label %if.end48.err_crit_edge, label %if.end.i114

if.end48.err_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i114:                                      ; preds = %if.end48
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.i111, ptr noundef nonnull @aspeed_lpc_snoop_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i113 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i113, label %do.end.i, label %if.end52

do.end.i:                                         ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %13) #8
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %irq.i, align 4
  br label %err

if.end52:                                         ; preds = %if.end.i114
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %conv = trunc i32 %16 to i16
  %call53 = call fastcc i32 @aspeed_lpc_enable_snoop(ptr noundef nonnull %call.i, ptr noundef %dev1, i32 noundef 0, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.err_crit_edge

if.end52.err_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end56:                                         ; preds = %if.end52
  %17 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node21, align 8
  %call58 = call i32 @of_property_read_u32_index(ptr noundef %18, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull %port) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then61:                                        ; preds = %if.end56
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %conv62 = trunc i32 %20 to i16
  %call63 = call fastcc i32 @aspeed_lpc_enable_snoop(ptr noundef nonnull %call.i, ptr noundef %dev1, i32 noundef 1, i16 noundef zeroext %conv62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then61.cleanup_crit_edge, label %if.then65

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @aspeed_lpc_disable_snoop(ptr noundef nonnull %call.i, i32 noundef 0)
  br label %err

err:                                              ; preds = %if.then65, %if.end52.err_crit_edge, %do.end.i, %if.end48.err_crit_edge
  %rc.0 = phi i32 [ %call53, %if.end52.err_crit_edge ], [ %call63, %if.then65 ], [ -19, %if.end48.err_crit_edge ], [ %call.i.i, %do.end.i ]
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %22) #5
  call void @clk_unprepare(ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end47, %do.end38, %if.then32.cleanup_crit_edge, %do.end27, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end18 ], [ -19, %do.end27 ], [ %retval.0.i.ph, %do.end47 ], [ %rc.0, %err ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %10, %do.end38 ], [ -517, %if.then32.cleanup_crit_edge ], [ 0, %if.then61.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_snoop_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx.i = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 0
  tail call void @__kfifo_free(ptr noundef %arrayidx.i) #5
  %miscdev.i = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 0, i32 2
  tail call void @misc_deregister(ptr noundef %miscdev.i) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i11.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 128, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx.i4 = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 1
  tail call void @__kfifo_free(ptr noundef %arrayidx.i4) #5
  %miscdev.i5 = getelementptr %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 3, i32 1, i32 2
  tail call void @misc_deregister(ptr noundef %miscdev.i5) #5
  %clk = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_lpc_enable_snoop(ptr noundef %lpc_snoop, ptr noundef %dev, i32 noundef %channel, i16 noundef zeroext %lpc_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %arrayidx = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel
  %wq = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.25, ptr noundef nonnull @aspeed_lpc_enable_snoop.__key) #5
  %call3 = tail call i32 @__kfifo_alloc(ptr noundef %arrayidx, i32 noundef 2048, i32 noundef 1, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %miscdev = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel, i32 2
  %0 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %miscdev, align 4
  %call7 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef %channel) #5
  %name = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel, i32 2, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %name, align 4
  %fops = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel, i32 2, i32 2
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @snoop_fops, ptr %fops, align 4
  %parent = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel, i32 2, i32 4
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 4
  %call20 = tail call i32 @misc_register(ptr noundef %miscdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %4 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %channel, label %if.end23.cleanup_crit_edge [
    i32 0, label %if.end23.sw.epilog_crit_edge
    i32 1, label %sw.bb24
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %if.end23.sw.epilog_crit_edge
  %snpwadr_mask.0 = phi i32 [ -65536, %sw.bb24 ], [ 65535, %if.end23.sw.epilog_crit_edge ]
  %snpwadr_shift.0 = phi i32 [ 16, %sw.bb24 ], [ %channel, %if.end23.sw.epilog_crit_edge ]
  %hicrb_en.0 = phi i32 [ 32768, %sw.bb24 ], [ 16384, %if.end23.sw.epilog_crit_edge ]
  %hicr5_en.0 = phi i32 [ 12, %sw.bb24 ], [ 3, %if.end23.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %lpc_snoop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lpc_snoop, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 128, i32 noundef %hicr5_en.0, i32 noundef %hicr5_en.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = ptrtoint ptr %lpc_snoop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lpc_snoop, align 4
  %conv = zext i16 %lpc_port to i32
  %shl = shl nuw i32 %conv, %snpwadr_shift.0
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 144, i32 noundef %snpwadr_mask.0, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool28.not = icmp eq i32 %10, 0
  br i1 %tobool28.not, label %sw.epilog.cleanup_crit_edge, label %if.then29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %lpc_snoop to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lpc_snoop, align 4
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 256, i32 noundef %hicrb_en.0, i32 noundef %hicrb_en.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %sw.epilog.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %call20, %if.end.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_lpc_disable_snoop(ptr noundef %lpc_snoop, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %channel, label %entry.return_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink12 = phi i32 [ 12, %sw.bb1 ], [ 3, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %lpc_snoop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lpc_snoop, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 128, i32 noundef %.sink12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %arrayidx = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel
  tail call void @__kfifo_free(ptr noundef %arrayidx) #5
  %miscdev = getelementptr %struct.aspeed_lpc_snoop, ptr %lpc_snoop, i32 0, i32 3, i32 %channel, i32 2
  tail call void @misc_deregister(ptr noundef %miscdev) #5
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_snoop_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data, align 4, !annotation !74
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 132, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %and = and i32 %5, 3
  store i32 %and, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 4
  %call5 = call i32 @regmap_write(ptr noundef %7, i32 noundef 132, i32 noundef %and) #5
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  %call7 = call i32 @regmap_read(ptr noundef %9, i32 noundef 148, ptr noundef nonnull %data) #5
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %and8 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end3.if.end12_crit_edge, label %if.then10

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.end3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %conv = trunc i32 %13 to i8
  %chan = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3
  %mask.i = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then10.if.end12_crit_edge, label %if.end.i

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i:                                         ; preds = %if.then10
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan, align 4
  %out.i = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out.i, align 4
  %sub.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %15)
  %cmp.i = icmp ugt i32 %sub.i, %15
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i32 %19, 1
  %20 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i, ptr %out.i, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.then5.i, %if.end.i.if.else.i_crit_edge
  %21 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out.i, align 4
  %sub21.i = sub i32 %17, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21.i, i32 %15)
  %cmp23.not.i = icmp ugt i32 %sub21.i, %15
  br i1 %cmp23.not.i, label %if.else.i.if.end36.i_crit_edge, label %if.then27.i

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %data.i = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %and.i = and i32 %17, %15
  %arrayidx.i = getelementptr i8, ptr %24, i32 %and.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %arrayidx.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan, align 4
  %inc34.i = add i32 %27, 1
  store i32 %inc34.i, ptr %chan, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then27.i, %if.else.i.if.end36.i_crit_edge
  %wq.i = getelementptr inbounds %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 0, i32 1
  call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end36.i, %if.then10.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg, align 4
  %and13 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data, align 4
  %and17 = lshr i32 %31, 8
  %conv19 = trunc i32 %and17 to i8
  %arrayidx21 = getelementptr %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 1
  %mask.i29 = getelementptr %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %mask.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i30 = icmp eq i32 %33, 0
  br i1 %tobool.not.i30, label %if.then15.cleanup_crit_edge, label %if.end.i34

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i34:                                       ; preds = %if.then15
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx21, align 4
  %out.i31 = getelementptr %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %out.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %out.i31, align 4
  %sub.i32 = sub i32 %35, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i32, i32 %33)
  %cmp.i33 = icmp ugt i32 %sub.i32, %33
  br i1 %cmp.i33, label %if.then5.i36, label %if.end.i34.if.else.i39_crit_edge

if.end.i34.if.else.i39_crit_edge:                 ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i39

if.then5.i36:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i35 = add i32 %37, 1
  %38 = ptrtoint ptr %out.i31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.i35, ptr %out.i31, align 4
  br label %if.else.i39

if.else.i39:                                      ; preds = %if.then5.i36, %if.end.i34.if.else.i39_crit_edge
  %39 = ptrtoint ptr %out.i31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %out.i31, align 4
  %sub21.i37 = sub i32 %35, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21.i37, i32 %33)
  %cmp23.not.i38 = icmp ugt i32 %sub21.i37, %33
  br i1 %cmp23.not.i38, label %if.else.i39.if.end36.i46_crit_edge, label %if.then27.i44

if.else.i39.if.end36.i46_crit_edge:               ; preds = %if.else.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i46

if.then27.i44:                                    ; preds = %if.else.i39
  call void @__sanitizer_cov_trace_pc() #7
  %data.i40 = getelementptr %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 4
  %41 = ptrtoint ptr %data.i40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i40, align 4
  %and.i41 = and i32 %35, %33
  %arrayidx.i42 = getelementptr i8, ptr %42, i32 %and.i41
  %43 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv19, ptr %arrayidx.i42, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  %44 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx21, align 4
  %inc34.i43 = add i32 %45, 1
  store i32 %inc34.i43, ptr %arrayidx21, align 4
  br label %if.end36.i46

if.end36.i46:                                     ; preds = %if.then27.i44, %if.else.i39.if.end36.i46_crit_edge
  %wq.i45 = getelementptr %struct.aspeed_lpc_snoop, ptr %arg, i32 0, i32 3, i32 1, i32 1
  call void @__wake_up(ptr noundef %wq.i45, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36.i46, %if.then15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ 1, %if.then15.cleanup_crit_edge ], [ 1, %if.end36.i46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snoop_file_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %copied = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #5
  %2 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %copied, align 4, !annotation !74
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %out = getelementptr i8, ptr %1, i32 -68
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup46_crit_edge

if.then.cleanup46_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 92) #5
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp11 = icmp eq i32 %10, %12
  br i1 %cmp11, label %if.then14, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %wq = getelementptr i8, ptr %1, i32 -52
  %call1675 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp2276 = icmp eq i32 %15, %17
  br i1 %cmp2276, label %if.then14.if.end26_crit_edge, label %if.then14.if.end32.thread70_crit_edge

if.then14.if.end32.thread70_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.thread70

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  br label %if.end26

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %if.then14.if.end26_crit_edge
  %call1677 = phi i32 [ %call16, %cleanup.if.end26_crit_edge ], [ %call1675, %if.then14.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1677)
  %tobool27.not = icmp eq i32 %call1677, 0
  br i1 %tobool27.not, label %cleanup, label %if.end32

cleanup:                                          ; preds = %if.end26
  call void @schedule() #5
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  %cmp22 = icmp eq i32 %19, %21
  br i1 %cmp22, label %cleanup.if.end26_crit_edge, label %cleanup.if.end32.thread70_crit_edge

cleanup.if.end32.thread70_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.thread70

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end32.thread70:                                ; preds = %cleanup.if.end32.thread70_crit_edge, %if.then14.if.end32.thread70_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end38

if.end32:                                         ; preds = %if.end26
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call1677)
  %cmp34 = icmp eq i32 %call1677, -512
  br i1 %cmp34, label %if.end32.cleanup46_crit_edge, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end32.cleanup46_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end38:                                         ; preds = %if.end32.if.end38_crit_edge, %if.end32.thread70, %if.end.if.end38_crit_edge, %entry.if.end38_crit_edge
  %call41 = call i32 @__kfifo_to_user(ptr noundef %add.ptr.i, ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %copied) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.cleanup46_crit_edge

if.end38.cleanup46_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %copied, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %if.end45, %if.end38.cleanup46_crit_edge, %if.end32.cleanup46_crit_edge, %if.then.cleanup46_crit_edge
  %retval.0 = phi i32 [ %23, %if.end45 ], [ -11, %if.then.cleanup46_crit_edge ], [ -4, %if.end32.cleanup46_crit_edge ], [ %call41, %if.end38.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snoop_file_poll(ptr noundef %file, ptr noundef %pt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %wq = getelementptr i8, ptr %1, i32 -52
  %tobool.not.i = icmp eq ptr %pt, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wq, ptr noundef nonnull %pt) #5
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 -72
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %out = getelementptr i8, ptr %1, i32 -68
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ne i32 %5, %7
  %cond = zext i1 %cmp.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_aspeed_lpc_snoop__232_375_aspeed_lpc_snoop_driver_init6, !1, !"__initcall__kmod_aspeed_lpc_snoop__232_375_aspeed_lpc_snoop_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 375, i32 1}
!2 = !{ptr @__exitcall_aspeed_lpc_snoop_driver_exit, !1, !"__exitcall_aspeed_lpc_snoop_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 378, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 379, i32 1}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 380, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 368, i32 12}
!12 = !{ptr @aspeed_lpc_snoop_driver, !13, !"aspeed_lpc_snoop_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 366, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 275, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 276, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 277, i32 35}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 278, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @aspeed_lpc_snoop_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @aspeed_lpc_snoop_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 284, i32 3}
!30 = !{ptr @aspeed_lpc_snoop_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @aspeed_lpc_snoop_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 290, i32 48}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 292, i32 3}
!36 = !{ptr @aspeed_lpc_snoop_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @aspeed_lpc_snoop_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 300, i32 4}
!40 = !{ptr @aspeed_lpc_snoop_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @aspeed_lpc_snoop_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 305, i32 3}
!44 = !{ptr @aspeed_lpc_snoop_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @aspeed_lpc_snoop_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 177, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @aspeed_lpc_snoop_config_irq._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @aspeed_lpc_snoop_config_irq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @aspeed_lpc_enable_snoop.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 194, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 203, i32 35}
!57 = !{ptr @snoop_fops, !58, !"snoop_fops", i1 false, i1 false}
!58 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 112, i32 37}
!59 = !{ptr @aspeed_lpc_snoop_match, !60, !"aspeed_lpc_snoop_match", i1 false, i1 false}
!60 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 356, i32 34}
!61 = !{ptr @ast2400_model_data, !62, !"ast2400_model_data", i1 false, i1 false}
!62 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 348, i32 49}
!63 = !{ptr @ast2500_model_data, !64, !"ast2500_model_data", i1 false, i1 false}
!64 = !{!"../drivers/soc/aspeed/aspeed-lpc-snoop.c", i32 352, i32 49}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2154394609}
