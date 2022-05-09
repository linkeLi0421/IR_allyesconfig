; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/adm1266.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/adm1266.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmem_cell_info = type { ptr, i32, i32, i32, i32 }
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
%struct.adm1266_data = type { %struct.pmbus_driver_info, %struct.gpio_chip, [25 x ptr], ptr, ptr, %struct.nvmem_config, ptr, ptr, %struct.mutex, [16 x i8], [256 x i8], [256 x i8] }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_adm1266__313_508_adm1266_driver_init6 = internal global ptr @adm1266_driver_init, section ".initcall6.init", align 4
@adm1266_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @adm1266_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adm1266_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adm1266_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adm1266_driver_exit = internal global ptr @adm1266_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author314 = internal constant [64 x i8] c"adm1266.author=Alexandru Tachici <alexandru.tachici@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description315 = internal constant [60 x i8] c"adm1266.description=PMBus driver for Analog Devices ADM1266\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [41 x i8] c"adm1266.file=drivers/hwmon/pmbus/adm1266\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [23 x i8] c"adm1266.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns318 = internal constant [24 x i8] c"adm1266.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1266\00", [24 x i8] zeroinitializer }, align 32
@adm1266_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adm1266\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adm1266_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1266\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pmbus_crc_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@adm1266_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->buf_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adm1266-%x-%s\00", [18 x i8] zeroinitializer }, align 32
@adm1266_names = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [60 x i8] zeroinitializer }, align 32
@adm1266_config_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adm1266_config_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adm1266_config_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 313, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GPIO registering failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adm1266_config_gpio\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/adm1266.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adm1266_config_gpio._entry_ptr = internal global ptr @adm1266_config_gpio._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO2\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO4\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO5\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO6\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO7\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO8\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO9\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO2\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO4\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO5\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO6\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO7\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO8\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDIO9\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDIO10\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDIO11\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDIO12\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDIO13\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDIO14\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDIO15\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDIO16\00", [25 x i8] zeroinitializer }, align 32
@adm1266_gpio_mapping = internal constant { [9 x [2 x i32]], [56 x i8] } { [9 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 3, i32 2], [2 x i32] [i32 4, i32 8], [2 x i32] [i32 5, i32 9], [2 x i32] [i32 6, i32 10], [2 x i32] [i32 7, i32 11], [2 x i32] [i32 8, i32 6], [2 x i32] [i32 9, i32 7]], [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" ( \00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"high-Z )\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"input \00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"output \00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open-drain )\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"push-pull )\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@adm1266_nvmem_cells = internal constant { [1 x %struct.nvmem_cell_info], [44 x i8] } { [1 x %struct.nvmem_cell_info] [%struct.nvmem_cell_info { ptr @.str.44, i32 0, i32 2048, i32 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@adm1266_config_nvmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 423, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not register nvmem!\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adm1266_config_nvmem\00", [43 x i8] zeroinitializer }, align 32
@adm1266_config_nvmem._entry_ptr = internal global ptr @adm1266_config_nvmem._entry, section ".printk_index", align 4
@adm1266_nvmem_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 392, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not read blackbox!\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adm1266_nvmem_read\00", [45 x i8] zeroinitializer }, align 32
@adm1266_nvmem_read._entry_ptr = internal global ptr @adm1266_nvmem_read._entry, section ".printk_index", align 4
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blackbox\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sequencer_state\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"adm1266_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 499, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 501, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"adm1266_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 487, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"adm1266_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 493, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"pmbus_crc_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 74, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 464, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 293, i32 62 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"adm1266_names\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 155, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 311, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 313, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 20 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 47 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 56 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 65 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 47 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 56 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 49 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 59 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 159, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 159, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 159, i32 22 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"adm1266_gpio_mapping\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 143, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 242, i32 15 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 244, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 248, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 250, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 252, i32 16 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 254, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 281, i32 15 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"adm1266_nvmem_cells\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 66, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 423, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 392, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 68, i32 21 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 345, i32 50 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [33 x i8] c"../drivers/hwmon/pmbus/adm1266.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 328, i32 16 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_import_ns318, ptr @__UNIQUE_ID_license317, ptr @__exitcall_adm1266_driver_exit, ptr @__initcall__kmod_adm1266__313_508_adm1266_driver_init6, ptr @adm1266_config_gpio._entry, ptr @adm1266_config_gpio._entry_ptr, ptr @adm1266_config_nvmem._entry, ptr @adm1266_config_nvmem._entry_ptr, ptr @adm1266_driver_exit, ptr @adm1266_nvmem_read._entry, ptr @adm1266_nvmem_read._entry_ptr, ptr @adm1266_driver, ptr @.str, ptr @adm1266_of_match, ptr @adm1266_id, ptr @pmbus_crc_table, ptr @adm1266_probe.__key, ptr @.str.1, ptr @.str.2, ptr @adm1266_names, ptr @adm1266_config_gpio.lock_key, ptr @adm1266_config_gpio.request_key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @adm1266_gpio_mapping, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @adm1266_nvmem_cells, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmbus_crc_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_names to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_config_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_config_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_config_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_gpio_mapping to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_nvmem_cells to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_config_nvmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1266_nvmem_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1266_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adm1266_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm1266_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @adm1266_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1266_probe(ptr noundef %client) #2 align 64 {
entry:
  %write_buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1664, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %client1 = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %call.i, align 128
  %arrayidx = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.081 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx6 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 %i.081
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4100, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.081, 1
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 128
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @crc8_populate_msb(ptr noundef nonnull @pmbus_crc_table, i8 noundef zeroext 7) #5
  %buf_mutex = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %buf_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @adm1266_probe.__key) #5
  %6 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1, align 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.dev_name.exit.i_crit_edge

for.end.dev_name.exit.i_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.end.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %for.end.dev_name.exit.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %dev_name.exit.i
  %i.053.i = phi i32 [ 0, %dev_name.exit.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %15 to i32
  %arrayidx.i = getelementptr [25 x ptr], ptr @adm1266_names, i32 0, i32 %i.053.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev2.i, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %conv.i, ptr noundef %17) #5
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %arrayidx5.i = getelementptr %struct.adm1266_data, ptr %call.i, i32 0, i32 2, i32 %i.053.i
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4.i, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %gc.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i.i, ptr %gc.i, align 4
  %20 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client1, align 4
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev7.i, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %owner.i, align 4
  %base.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 19
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %base.i, align 4
  %gpio_names11.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 2
  %names.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 22
  %25 = ptrtoint ptr %names.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %gpio_names11.i, ptr %names.i, align 4
  %ngpio.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 20
  %26 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 25, ptr %ngpio.i, align 4
  %get.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 10
  %27 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @adm1266_gpio_get, ptr %get.i, align 4
  %get_multiple.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 11
  %28 = ptrtoint ptr %get_multiple.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @adm1266_gpio_get_multiple, ptr %get_multiple.i, align 4
  %dbg_show.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 1, i32 16
  %29 = ptrtoint ptr %dbg_show.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @adm1266_gpio_dbg_show, ptr %dbg_show.i, align 4
  %call20.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev7.i, ptr noundef %gc.i, ptr noundef %call.i, ptr noundef nonnull @adm1266_config_gpio.lock_key, ptr noundef nonnull @adm1266_config_gpio.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %for.end.i.if.end10_crit_edge, label %adm1266_config_gpio.exit

for.end.i.if.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

adm1266_config_gpio.exit:                         ; preds = %for.end.i
  %30 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client1, align 4
  %dev24.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull @.str.3, i32 noundef %call20.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp8 = icmp slt i32 %call20.i, 0
  br i1 %cmp8, label %adm1266_config_gpio.exit.cleanup_crit_edge, label %adm1266_config_gpio.exit.if.end10_crit_edge

adm1266_config_gpio.exit.if.end10_crit_edge:      ; preds = %adm1266_config_gpio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

adm1266_config_gpio.exit.cleanup_crit_edge:       ; preds = %adm1266_config_gpio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %adm1266_config_gpio.exit.if.end10_crit_edge, %for.end.i.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %write_buf.i) #5
  %32 = getelementptr inbounds [6 x i8], ptr %write_buf.i, i32 0, i32 2
  %33 = getelementptr inbounds [6 x i8], ptr %write_buf.i, i32 0, i32 3
  %34 = getelementptr inbounds [6 x i8], ptr %write_buf.i, i32 0, i32 4
  %35 = getelementptr inbounds [6 x i8], ptr %write_buf.i, i32 0, i32 5
  %call.i48 = tail call i64 @ktime_get_seconds() #5
  %36 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %write_buf.i, align 2
  %conv.i49 = trunc i64 %call.i48 to i8
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i49, ptr %32, align 2
  %38 = lshr i64 %call.i48, 8
  %conv.1.i = trunc i64 %38 to i8
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.1.i, ptr %33, align 1
  %40 = lshr i64 %call.i48, 16
  %conv.2.i = trunc i64 %40 to i8
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.2.i, ptr %34, align 2
  %42 = lshr i64 %call.i48, 24
  %conv.3.i = trunc i64 %42 to i8
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.3.i, ptr %35, align 1
  %44 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client1, align 4
  %call2.i = call i32 @i2c_smbus_write_block_data(ptr noundef %45, i8 noundef zeroext -33, i8 noundef zeroext 6, ptr noundef nonnull %write_buf.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %write_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp12 = icmp slt i32 %call2.i, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %46 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client1, align 4
  %dev.i52 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %init_name.i.i53 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %init_name.i.i53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i53, align 8
  %tobool.not.i.i54 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i54, label %if.end.i.i55, label %if.end14.dev_name.exit.i59_crit_edge

if.end14.dev_name.exit.i59_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i59

if.end.i.i55:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i52, align 4
  br label %dev_name.exit.i59

dev_name.exit.i59:                                ; preds = %if.end.i.i55, %if.end14.dev_name.exit.i59_crit_edge
  %retval.0.i.i56 = phi ptr [ %51, %if.end.i.i55 ], [ %49, %if.end14.dev_name.exit.i59_crit_edge ]
  %nvmem_config.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5
  %name.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %retval.0.i.i56, ptr %name.i, align 4
  %53 = ptrtoint ptr %nvmem_config.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev.i52, ptr %nvmem_config.i, align 4
  %root_only.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 11
  %54 = ptrtoint ptr %root_only.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %root_only.i, align 1
  %read_only.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 10
  %55 = ptrtoint ptr %read_only.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %read_only.i, align 4
  %owner.i57 = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %owner.i57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %owner.i57, align 4
  %reg_read.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 15
  %57 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @adm1266_nvmem_read, ptr %reg_read.i, align 4
  %cells.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 5
  %58 = ptrtoint ptr %cells.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @adm1266_nvmem_cells, ptr %cells.i, align 4
  %ncells.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 6
  %59 = ptrtoint ptr %ncells.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %ncells.i, align 4
  %priv.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 21
  %60 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %priv.i, align 4
  %stride.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 20
  %61 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %stride.i, align 4
  %word_size.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 19
  %62 = ptrtoint ptr %word_size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %word_size.i, align 4
  %size.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 5, i32 18
  %63 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2048, ptr %size.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i52, i32 noundef 2048, i32 noundef 3520) #5
  %dev_mem.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 7
  %64 = ptrtoint ptr %dev_mem.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i, ptr %dev_mem.i, align 16
  %tobool.not.i58 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i58, label %dev_name.exit.i59.cleanup_crit_edge, label %if.end.i60

dev_name.exit.i59.cleanup_crit_edge:              ; preds = %dev_name.exit.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i60:                                       ; preds = %dev_name.exit.i59
  %65 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client1, align 4
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  %call24.i = call ptr @devm_nvmem_register(ptr noundef %dev22.i, ptr noundef %nvmem_config.i) #5
  %nvmem.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 6
  %67 = ptrtoint ptr %nvmem.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call24.i, ptr %nvmem.i, align 4
  %cmp.i.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %adm1266_config_nvmem.exit, label %if.end.i60.if.end18_crit_edge

if.end.i60.if.end18_crit_edge:                    ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

adm1266_config_nvmem.exit:                        ; preds = %if.end.i60
  %68 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client1, align 4
  %dev29.i = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.40) #8
  %70 = ptrtoint ptr %nvmem.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nvmem.i, align 4
  %72 = ptrtoint ptr %71 to i32
  %cmp16 = icmp slt ptr %71, null
  br i1 %cmp16, label %adm1266_config_nvmem.exit.cleanup_crit_edge, label %adm1266_config_nvmem.exit.if.end18_crit_edge

adm1266_config_nvmem.exit.if.end18_crit_edge:     ; preds = %adm1266_config_nvmem.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

adm1266_config_nvmem.exit.cleanup_crit_edge:      ; preds = %adm1266_config_nvmem.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %adm1266_config_nvmem.exit.if.end18_crit_edge, %if.end.i60.if.end18_crit_edge
  %call20 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %73 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client1, align 4
  %call.i64 = call ptr @pmbus_get_debugfs_dir(ptr noundef %74) #5
  %tobool.not.i65 = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i65, label %if.end23.cleanup_crit_edge, label %if.end.i68

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i68:                                       ; preds = %if.end23
  %75 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %client1, align 4
  %name.i66 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 2
  %call2.i67 = call ptr @debugfs_create_dir(ptr noundef %name.i66, ptr noundef nonnull %call.i64) #5
  %debugfs_dir.i = getelementptr inbounds %struct.adm1266_data, ptr %call.i, i32 0, i32 4
  %77 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call2.i67, ptr %debugfs_dir.i, align 16
  %tobool4.not.i = icmp eq ptr %call2.i67, null
  br i1 %tobool4.not.i, label %if.end.i68.cleanup_crit_edge, label %if.end6.i

if.end.i68.cleanup_crit_edge:                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %client1, align 4
  %dev.i69 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  call void @debugfs_create_devm_seqfile(ptr noundef %dev.i69, ptr noundef nonnull @.str.45, ptr noundef nonnull %call2.i67, ptr noundef nonnull @adm1266_state_read) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.end.i68.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %adm1266_config_nvmem.exit.cleanup_crit_edge, %dev_name.exit.i59.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %adm1266_config_gpio.exit.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call20.i, %adm1266_config_gpio.exit.cleanup_crit_edge ], [ %call2.i, %if.end10.cleanup_crit_edge ], [ %72, %adm1266_config_nvmem.exit.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.end.i68.cleanup_crit_edge ], [ 0, %if.end6.i ], [ -12, %dev_name.exit.i59.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1266_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %read_buf = alloca [33 x i8], align 1
  %pins_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %read_buf) #5
  %0 = call ptr @memset(ptr %read_buf, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %offset)
  %cmp = icmp ult i32 %offset, 9
  %. = select i1 %cmp, i8 -22, i8 -23
  %client = getelementptr inbounds %struct.adm1266_data, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %2, i8 noundef zeroext %., ptr noundef nonnull %read_buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %3 = ptrtoint ptr %read_buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %read_buf, align 1
  %conv6 = zext i8 %4 to i32
  %arrayidx7 = getelementptr inbounds [33 x i8], ptr %read_buf, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %add = or i32 %shl, %conv6
  %7 = ptrtoint ptr %pins_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %pins_status, align 4
  br i1 %cmp, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13 = getelementptr [9 x [2 x i32]], ptr @adm1266_gpio_mapping, i32 0, i32 %offset, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %10 = ptrtoint ptr %pins_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %pins_status.0.30 = load volatile i32, ptr %pins_status, align 4
  %and.i = and i32 %9, 31
  %shr.i = lshr i32 %pins_status.0.30, %and.i
  %and1.i = and i32 %shr.i, 1
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %offset, 23
  %11 = ptrtoint ptr %pins_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %pins_status.0. = load volatile i32, ptr %pins_status, align 4
  %and.i27 = and i32 %sub, 31
  %shr.i28 = lshr i32 %pins_status.0., %and.i27
  %and1.i29 = and i32 %shr.i28, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and1.i, %if.then11 ], [ %and1.i29, %if.end15 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins_status)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %read_buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1266_gpio_get_multiple(ptr noundef %chip, ptr noundef %mask, ptr noundef %bits) #2 align 64 {
entry:
  %read_buf = alloca [256 x i8], align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %read_buf) #5
  %0 = call ptr @memset(ptr %read_buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status)
  %client = getelementptr inbounds %struct.adm1266_data, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %2, i8 noundef zeroext -22, ptr noundef nonnull %read_buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %read_buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %read_buf, align 1
  %conv = zext i8 %4 to i32
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr %read_buf, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %add = or i32 %shl, %conv
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %status, align 4
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bits, align 4
  %call4 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 9, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call4)
  %cmp567 = icmp ult i32 %call4, 9
  br i1 %cmp567, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %gpio_nr.068 = phi i32 [ %call13, %for.inc.for.body_crit_edge ], [ %call4, %if.end.for.body_crit_edge ]
  %arrayidx8 = getelementptr [9 x [2 x i32]], ptr @adm1266_gpio_mapping, i32 0, i32 %gpio_nr.068, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %status.0.73 = load volatile i32, ptr %status, align 4
  %and.i = and i32 %10, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %12, %status.0.73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef %gpio_nr.068, ptr noundef %bits) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %add12 = add nuw nsw i32 %gpio_nr.068, 1
  %call13 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 9, i32 noundef %add12) #5
  %cmp5 = icmp ult i32 %call13, 9
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %gpio_nr.0.lcssa = phi i32 [ %call4, %if.end.for.end_crit_edge ], [ %call13, %for.inc.for.end_crit_edge ]
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %call16 = call i32 @i2c_smbus_read_block_data(ptr noundef %15, i8 noundef zeroext -23, ptr noundef nonnull %read_buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %for.end.cleanup_crit_edge, label %if.end20

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %16 = ptrtoint ptr %read_buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %read_buf, align 1
  %conv22 = zext i8 %17 to i32
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2, align 1
  %conv24 = zext i8 %19 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %add26 = or i32 %shl25, %conv22
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add26, ptr %status, align 4
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bits, align 4
  %call27 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 242, i32 noundef %gpio_nr.0.lcssa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 242, i32 %call27)
  %cmp2970 = icmp ult i32 %call27, 242
  br i1 %cmp2970, label %if.end20.for.body31_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.for.body31_crit_edge:                    ; preds = %if.end20
  br label %for.body31

for.body31:                                       ; preds = %for.inc36.for.body31_crit_edge, %if.end20.for.body31_crit_edge
  %gpio_nr.171 = phi i32 [ %call38, %for.inc36.for.body31_crit_edge ], [ %call27, %if.end20.for.body31_crit_edge ]
  %sub = add nuw nsw i32 %gpio_nr.171, 23
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %status.0. = load volatile i32, ptr %status, align 4
  %and.i64 = and i32 %sub, 31
  %23 = shl nuw i32 1, %and.i64
  %24 = and i32 %status.0., %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool33.not = icmp eq i32 %24, 0
  br i1 %tobool33.not, label %for.body31.for.inc36_crit_edge, label %if.then34

for.body31.for.inc36_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36

if.then34:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef %gpio_nr.171, ptr noundef %bits) #5
  br label %for.inc36

for.inc36:                                        ; preds = %if.then34, %for.body31.for.inc36_crit_edge
  %add37 = add nuw nsw i32 %gpio_nr.171, 1
  %call38 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 242, i32 noundef %add37) #5
  %cmp29 = icmp ult i32 %call38, 242
  br i1 %cmp29, label %for.inc36.for.body31_crit_edge, label %for.inc36.cleanup_crit_edge

for.inc36.cleanup_crit_edge:                      ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc36.for.body31_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body31

cleanup:                                          ; preds = %for.inc36.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call16, %for.end.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %for.inc36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %read_buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm1266_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  %read_buf = alloca [256 x i8], align 1
  %write_cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %read_buf) #5
  %0 = call ptr @memset(ptr %read_buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %write_cmd) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0174 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr [9 x [2 x i32]], ptr @adm1266_gpio_mapping, i32 0, i32 %i.0174, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx1, align 4
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %write_cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %write_cmd, align 1
  %call2 = call fastcc i32 @adm1266_pmbus_block_xfer(ptr noundef %call, i8 noundef zeroext -31, ptr noundef nonnull %write_cmd, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 2
  br i1 %cmp3.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %read_buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_buf, align 1
  %conv6 = zext i8 %5 to i32
  %arrayidx7 = getelementptr [25 x ptr], ptr @adm1266_names, i32 0, i32 %i.0174
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef %7) #5
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.33) #5
  %and = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %do.end36

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end36:                                         ; preds = %if.end
  %8 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool40.not = icmp eq i32 %8, 0
  br i1 %tobool40.not, label %do.end36.do.end57_crit_edge, label %if.then41

do.end36.do.end57_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

if.then41:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.35) #5
  br label %do.end57

do.end57:                                         ; preds = %if.then41, %do.end36.do.end57_crit_edge
  %9 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool61.not = icmp eq i32 %9, 0
  br i1 %tobool61.not, label %do.end57.do.end78_crit_edge, label %if.then62

do.end57.do.end78_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end78

if.then62:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.36) #5
  br label %do.end78

do.end78:                                         ; preds = %if.then62, %do.end57.do.end78_crit_edge
  %10 = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool82.not = icmp eq i32 %10, 0
  %.str.38..str.37 = select i1 %tobool82.not, ptr @.str.38, ptr @.str.37
  br label %for.inc

for.inc:                                          ; preds = %do.end78, %if.end.for.inc_crit_edge
  %.str.37.sink = phi ptr [ @.str.34, %if.end.for.inc_crit_edge ], [ %.str.38..str.37, %do.end78 ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.37.sink) #5
  %inc = add nuw nsw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %11 = ptrtoint ptr %write_cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %write_cmd, align 1
  %call86 = call fastcc i32 @adm1266_pmbus_block_xfer(ptr noundef %call, i8 noundef zeroext -44, ptr noundef nonnull %write_cmd, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call86)
  %cmp87.not = icmp eq i32 %call86, 32
  br i1 %cmp87.not, label %for.end.for.body94_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.for.body94_crit_edge:                     ; preds = %for.end
  br label %for.body94

for.body94:                                       ; preds = %for.inc134.for.body94_crit_edge, %for.end.for.body94_crit_edge
  %i.1175 = phi i32 [ %inc135, %for.inc134.for.body94_crit_edge ], [ 0, %for.end.for.body94_crit_edge ]
  %add = add nuw nsw i32 %i.1175, 9
  %arrayidx95 = getelementptr [25 x ptr], ptr @adm1266_names, i32 0, i32 %add
  %12 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx95, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef %13) #5
  %mul = shl nuw i32 %i.1175, 1
  %add99 = or i32 %mul, 1
  %arrayidx100 = getelementptr [256 x i8], ptr %read_buf, i32 0, i32 %add99
  %14 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx100, align 1
  %16 = lshr i8 %15, 5
  %shr120 = zext i8 %16 to i32
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.33) #5
  %17 = add i8 %15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %17)
  %18 = icmp ult i8 %17, 96
  br i1 %18, label %for.body94.for.inc134_crit_edge, label %if.end125

for.body94.for.inc134_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc134

if.end125:                                        ; preds = %for.body94
  %and126 = and i32 %shr120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end129_crit_edge, label %if.then128

if.end125.if.end129_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.36) #5
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end125.if.end129_crit_edge
  %and130 = and i32 %shr120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.for.inc134_crit_edge, label %if.then132

if.end129.for.inc134_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc134

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.35) #5
  br label %for.inc134

for.inc134:                                       ; preds = %if.then132, %if.end129.for.inc134_crit_edge, %for.body94.for.inc134_crit_edge
  %.str.39.sink = phi ptr [ @.str.34, %for.body94.for.inc134_crit_edge ], [ @.str.39, %if.then132 ], [ @.str.39, %if.end129.for.inc134_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.39.sink) #5
  %inc135 = add nuw nsw i32 %i.1175, 1
  %exitcond177.not = icmp eq i32 %inc135, 16
  br i1 %exitcond177.not, label %for.inc134.cleanup_crit_edge, label %for.inc134.for.body94_crit_edge

for.inc134.for.body94_crit_edge:                  ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body94

for.inc134.cleanup_crit_edge:                     ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc134.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %write_cmd) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %read_buf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adm1266_pmbus_block_xfer(ptr noundef %data, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %data_w, ptr nocapture noundef writeonly %data_r) unnamed_addr #2 align 64 {
entry:
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %addr10 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.adm1266_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #5
  %2 = getelementptr inbounds i8, ptr %msgs, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr2, align 2
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 512, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %write_buf = getelementptr inbounds %struct.adm1266_data, ptr %data, i32 0, i32 10
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %write_buf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %10 = load i16, ptr %addr2, align 2
  %11 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %12 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 513, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %13 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 257, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %read_buf = getelementptr inbounds %struct.adm1266_data, ptr %data, i32 0, i32 11
  %14 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %read_buf, ptr %buf8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr10) #5
  %15 = ptrtoint ptr %addr10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %addr10, align 1, !annotation !133
  %buf_mutex = getelementptr inbounds %struct.adm1266_data, ptr %data, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #5
  %16 = ptrtoint ptr %write_buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %cmd, ptr %write_buf, align 1
  %arrayidx15 = getelementptr %struct.adm1266_data, ptr %data, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx15, align 1
  %arrayidx18 = getelementptr %struct.adm1266_data, ptr %data, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %data_w to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data_w, align 1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx18, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end26, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp22 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp22, i32 -71, i32 %call
  br label %cleanup

if.end26:                                         ; preds = %entry
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 8
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not = icmp eq i16 %25, 0
  br i1 %tobool.not, label %if.end26.if.end65_crit_edge, label %if.then29

if.end26.if.end65_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then29:                                        ; preds = %if.end26
  %26 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %msgs, align 4
  %conv.i = trunc i16 %27 to i8
  %shl.i = shl i8 %conv.i, 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags, align 2
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 1
  %or.i = or i8 %31, %shl.i
  %32 = ptrtoint ptr %addr10 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i, ptr %addr10, align 1
  %call32 = call zeroext i8 @crc8(ptr noundef nonnull @pmbus_crc_table, ptr noundef nonnull %addr10, i32 noundef 1, i8 noundef zeroext 0) #5
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len, align 4
  %conv37 = zext i16 %36 to i32
  %call38 = call zeroext i8 @crc8(ptr noundef nonnull @pmbus_crc_table, ptr noundef %34, i32 noundef %conv37, i8 noundef zeroext %call32) #5
  %37 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayinit.element, align 4
  %conv.i1 = trunc i16 %38 to i8
  %shl.i2 = shl i8 %conv.i1, 1
  %39 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags6, align 2
  %41 = trunc i16 %40 to i8
  %42 = and i8 %41, 1
  %or.i4 = or i8 %42, %shl.i2
  %43 = ptrtoint ptr %addr10 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %or.i4, ptr %addr10, align 1
  %call41 = call zeroext i8 @crc8(ptr noundef nonnull @pmbus_crc_table, ptr noundef nonnull %addr10, i32 noundef 1, i8 noundef zeroext %call38) #5
  %44 = ptrtoint ptr %buf8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf8, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv47 = zext i8 %47 to i32
  %add48 = add nuw nsw i32 %conv47, 1
  %call49 = call zeroext i8 @crc8(ptr noundef nonnull @pmbus_crc_table, ptr noundef %45, i32 noundef %add48, i8 noundef zeroext %call41) #5
  %48 = ptrtoint ptr %buf8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf8, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv56 = zext i8 %51 to i32
  %add57 = add nuw nsw i32 %conv56, 1
  %arrayidx58 = getelementptr i8, ptr %49, i32 %add57
  %52 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call49, i8 %53)
  %cmp60.not = icmp eq i8 %call49, %53
  br i1 %cmp60.not, label %if.then29.if.end65_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29.if.end65_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.end65:                                         ; preds = %if.then29.if.end65_crit_edge, %if.end26.if.end65_crit_edge
  %54 = ptrtoint ptr %buf8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buf8, align 4
  %arrayidx68 = getelementptr i8, ptr %55, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %conv72 = zext i8 %57 to i32
  %58 = call ptr @memcpy(ptr %data_r, ptr %arrayidx68, i32 %conv72)
  %59 = load i8, ptr %55, align 1
  %conv76 = zext i8 %59 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then29.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.store.select, %if.then ], [ %conv76, %if.end65 ], [ -74, %if.then29.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %buf_mutex) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr10) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1266_nvmem_read(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %index.i = alloca i8, align 1
  %buf.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %bytes, %offset
  %size = getelementptr inbounds %struct.adm1266_data, ptr %priv, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp1 = icmp eq i32 %offset, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %dev_mem = getelementptr inbounds %struct.adm1266_data, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %dev_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_mem, align 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 %1)
  %5 = load ptr, ptr %dev_mem, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %index.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i) #5
  %6 = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 3
  %client.i = getelementptr inbounds %struct.adm1266_data, ptr %priv, i32 0, i32 3
  %7 = call ptr @memset(ptr %buf.i, i32 255, i32 5)
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %call.i = call i32 @i2c_smbus_read_block_data(ptr noundef %9, i8 noundef zeroext -26, ptr noundef nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.do.end_crit_edge, label %if.end.i

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %6, align 1
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %index.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp526.not.i = icmp eq i8 %11, 0
  br i1 %cmp526.not.i, label %if.end3.i.adm1266_nvmem_read_blackbox.exit_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

if.end3.i.adm1266_nvmem_read_blackbox.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adm1266_nvmem_read_blackbox.exit

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %read_buff.addr.028.i = phi ptr [ %add.ptr.i, %if.end15.i.for.body.i_crit_edge ], [ %5, %if.end3.i.for.body.i_crit_edge ]
  %storemerge27.i = phi i8 [ %inc.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %if.end3.i.for.body.i_crit_edge ]
  %call7.i = call fastcc i32 @adm1266_pmbus_block_xfer(ptr noundef %priv, i8 noundef zeroext -34, ptr noundef nonnull %index.i, ptr noundef %read_buff.addr.028.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %for.body.i.do.end_crit_edge, label %if.end11.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call7.i)
  %cmp12.not.i = icmp eq i32 %call7.i, 64
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end11.i.do.end_crit_edge

if.end11.i.do.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end15.i:                                       ; preds = %if.end11.i
  %add.ptr.i = getelementptr i8, ptr %read_buff.addr.028.i, i32 64
  %inc.i = add nuw i8 %storemerge27.i, 1
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %inc.i, ptr %index.i, align 1
  %cmp5.i = icmp ult i8 %inc.i, %11
  br i1 %cmp5.i, label %if.end15.i.for.body.i_crit_edge, label %if.end15.i.adm1266_nvmem_read_blackbox.exit_crit_edge

if.end15.i.adm1266_nvmem_read_blackbox.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adm1266_nvmem_read_blackbox.exit

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

adm1266_nvmem_read_blackbox.exit:                 ; preds = %if.end15.i.adm1266_nvmem_read_blackbox.exit_crit_edge, %if.end3.i.adm1266_nvmem_read_blackbox.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %index.i) #5
  br label %if.end8

do.end:                                           ; preds = %if.end11.i.do.end_crit_edge, %for.body.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then2.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.do.end_crit_edge ], [ %call.i, %if.then2.do.end_crit_edge ], [ %call7.i, %for.body.i.do.end_crit_edge ], [ -5, %if.end11.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %index.i) #5
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #8
  br label %cleanup

if.end8:                                          ; preds = %adm1266_nvmem_read_blackbox.exit, %if.end.if.end8_crit_edge
  %dev_mem9 = getelementptr inbounds %struct.adm1266_data, ptr %priv, i32 0, i32 7
  %16 = ptrtoint ptr %dev_mem9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_mem9, align 16
  %add.ptr = getelementptr i8, ptr %17, i32 %offset
  %18 = call ptr @memcpy(ptr %val, ptr %add.ptr, i32 %bytes)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_debugfs_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1266_state_read(ptr noundef %s, ptr nocapture noundef readnone %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr, i8 noundef zeroext -39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_adm1266__313_508_adm1266_driver_init6, !1, !"__initcall__kmod_adm1266__313_508_adm1266_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 508, i32 1}
!2 = !{ptr @__exitcall_adm1266_driver_exit, !1, !"__exitcall_adm1266_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author314, !4, !"__UNIQUE_ID_author314", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 510, i32 1}
!5 = !{ptr @__UNIQUE_ID_description315, !6, !"__UNIQUE_ID_description315", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 511, i32 1}
!7 = !{ptr @__UNIQUE_ID_file316, !8, !"__UNIQUE_ID_file316", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 512, i32 1}
!9 = !{ptr @__UNIQUE_ID_license317, !8, !"__UNIQUE_ID_license317", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns318, !11, !"__UNIQUE_ID_import_ns318", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 513, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 501, i32 14}
!14 = !{ptr @adm1266_driver, !15, !"adm1266_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 499, i32 26}
!16 = !{ptr @adm1266_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 464, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pmbus_crc_table, !20, !"pmbus_crc_table", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 74, i32 1}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 293, i32 62}
!23 = !{ptr @adm1266_config_gpio.lock_key, !24, !"lock_key", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 311, i32 8}
!25 = !{ptr @adm1266_config_gpio.request_key, !24, !"request_key", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 313, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @adm1266_config_gpio._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @adm1266_config_gpio._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 2}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 11}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 20}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 29}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 38}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 47}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 56}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 156, i32 65}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 157, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 157, i32 11}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 157, i32 20}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 157, i32 29}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 157, i32 38}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 157, i32 47}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 157, i32 56}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 158, i32 2}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 158, i32 11}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 158, i32 20}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 158, i32 29}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 158, i32 39}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 158, i32 49}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 158, i32 59}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 159, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 159, i32 12}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 159, i32 22}
!84 = !{ptr @adm1266_names, !85, !"adm1266_names", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 155, i32 20}
!86 = !{ptr @adm1266_gpio_mapping, !87, !"adm1266_gpio_mapping", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 143, i32 27}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 242, i32 15}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 244, i32 16}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 248, i32 16}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 250, i32 16}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 252, i32 16}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 254, i32 16}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 281, i32 15}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 423, i32 3}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @adm1266_config_nvmem._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @adm1266_config_nvmem._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 392, i32 4}
!109 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @adm1266_nvmem_read._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @adm1266_nvmem_read._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 68, i32 21}
!114 = !{ptr @adm1266_nvmem_cells, !115, !"adm1266_nvmem_cells", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 66, i32 37}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 345, i32 50}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 328, i32 16}
!120 = !{ptr @adm1266_of_match, !121, !"adm1266_of_match", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 487, i32 34}
!122 = !{ptr @adm1266_id, !123, !"adm1266_id", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/pmbus/adm1266.c", i32 493, i32 35}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
