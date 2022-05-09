; ModuleID = '/llk/IR_all_yes/drivers/hwmon/aquacomputer_d5next.c_pt.bc'
source_filename = "../drivers/hwmon/aquacomputer_d5next.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.d5next_data = type { ptr, ptr, ptr, i32, [2 x i16], [2 x i32], [3 x i16], [2 x i16], [2 x i32], i16, i32, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@d5next_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @d5next_table, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @d5next_probe, ptr @d5next_remove, ptr null, ptr @d5next_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_aquacomputer_d5next__223_358_d5next_init7 = internal global ptr @d5next_init, section ".initcall7.init", align 4
@__exitcall_d5next_exit = internal global ptr @d5next_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [59 x i8] c"aquacomputer_d5next.file=drivers/hwmon/aquacomputer_d5next\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [32 x i8] c"aquacomputer_d5next.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [66 x i8] c"aquacomputer_d5next.author=Aleksa Savic <savicaleksa83@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [75 x i8] c"aquacomputer_d5next.description=Hwmon driver for Aquacomputer D5 Next pump\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aquacomputer-d5next\00", [44 x i8] zeroinitializer }, align 32
@d5next_table = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 3184, i32 61454, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"d5next\00", [25 x i8] zeroinitializer }, align 32
@d5next_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @d5next_hwmon_ops, ptr @d5next_info }, [24 x i8] zeroinitializer }, align 32
@d5next_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @d5next_is_visible, ptr @d5next_read, ptr @d5next_read_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@d5next_info = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.12, ptr @.compoundliteral.14, ptr @.compoundliteral.16, ptr @.compoundliteral.18, ptr @.compoundliteral.20, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Coolant temp\00", [19 x i8] zeroinitializer }, align 32
@label_speeds = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@label_power = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.5, ptr @.str.6], [24 x i8] zeroinitializer }, align 32
@label_voltages = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9], [20 x i8] zeroinitializer }, align 32
@label_current = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.10, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Pump speed\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Fan speed\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Pump power\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Fan power\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pump voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Fan voltage\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"+5V voltage\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pump current\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Fan current\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2097154, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 6, i32 6, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.13 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4194816, i32 4194816, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.15 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1026, i32 1026, i32 1026, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.17 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 1026, i32 1026, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.19 }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@serial_number_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @serial_number_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@firmware_version_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @firmware_version_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_cycles\00", [19 x i8] zeroinitializer }, align 32
@power_cycles_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @power_cycles_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%05u-%05u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aquacomputer_d5next\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"d5next_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 338, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 339, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"d5next_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 331, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 301, i32 64 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"d5next_chip_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 179, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"d5next_hwmon_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 163, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"d5next_info\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 169, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 142, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"label_speeds\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 64, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"label_power\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 69, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"label_voltages\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 74, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"label_current\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 80, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 65, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 66, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 70, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 71, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 75, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 76, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 77, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 81, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 82, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 259, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 262, i32 22 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"serial_number_fops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 233, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 263, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"firmware_version_fops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 243, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 264, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"power_cycles_fops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 253, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 229, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 239, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [39 x i8] c"../drivers/hwmon/aquacomputer_d5next.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 348, i32 9 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_d5next_exit, ptr @__initcall__kmod_aquacomputer_d5next__223_358_d5next_init7, ptr @d5next_exit, ptr @d5next_driver, ptr @.str, ptr @d5next_table, ptr @.str.1, ptr @d5next_chip_info, ptr @d5next_hwmon_ops, ptr @d5next_info, ptr @.str.2, ptr @label_speeds, ptr @label_power, ptr @label_voltages, ptr @label_current, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.compoundliteral, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.str.22, ptr @serial_number_fops, ptr @.str.23, ptr @firmware_version_fops, ptr @.str.24, ptr @power_cycles_fops, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5next_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5next_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5next_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5next_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d5next_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_speeds to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_power to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_voltages to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @label_current to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_number_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_version_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_cycles_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @d5next_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hid_unregister_driver(ptr noundef nonnull @d5next_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @d5next_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @d5next_driver, ptr noundef null, ptr noundef nonnull @.str.27) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d5next_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %2, -200
  %updated = getelementptr inbounds %struct.d5next_data, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %updated to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %updated, align 4
  %call.i44 = tail call i32 @hid_open_report(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool3.not = icmp eq i32 %call.i44, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @hid_hw_open(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.fail_and_stop_crit_edge

if.end9.fail_and_stop_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_and_stop

if.end13:                                         ; preds = %if.end9
  %call15 = tail call ptr @hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i, ptr noundef nonnull @d5next_chip_info, ptr noundef null) #7
  %hwmon_dev = getelementptr inbounds %struct.d5next_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call15, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call15 to i32
  tail call void @hid_hw_close(ptr noundef %hdev) #7
  br label %fail_and_stop

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @d5next_debugfs_init(ptr noundef nonnull %call.i)
  br label %cleanup

fail_and_stop:                                    ; preds = %if.then18, %if.end9.fail_and_stop_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.fail_and_stop_crit_edge ], [ %5, %if.then18 ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_and_stop, %if.end21, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_and_stop ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i44, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d5next_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs = getelementptr inbounds %struct.d5next_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %hwmon_dev = getelementptr inbounds %struct.d5next_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %5) #7
  tail call void @hid_hw_close(ptr noundef %hdev) #7
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @d5next_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %report, ptr nocapture noundef readonly %data, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %add.ptr, align 1
  %conv = zext i16 %5 to i32
  %serial_number = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %serial_number to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %serial_number, align 4
  %add.ptr2 = getelementptr i8, ptr %data, i32 5
  %7 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr2, align 1
  %conv4 = zext i16 %8 to i32
  %arrayidx6 = getelementptr %struct.d5next_data, ptr %3, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %arrayidx6, align 4
  %add.ptr7 = getelementptr i8, ptr %data, i32 13
  %10 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr7, align 1
  %firmware_version = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %firmware_version to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %firmware_version, align 4
  %add.ptr9 = getelementptr i8, ptr %data, i32 24
  %13 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr9, align 1
  %power_cycles = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %power_cycles to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %power_cycles, align 4
  %add.ptr11 = getelementptr i8, ptr %data, i32 87
  %16 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr11, align 1
  %conv13 = zext i16 %17 to i32
  %mul = mul nuw nsw i32 %conv13, 10
  %temp_input = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %temp_input to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %temp_input, align 4
  %add.ptr14 = getelementptr i8, ptr %data, i32 116
  %19 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %add.ptr14, align 1
  %speed_input = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %speed_input to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %speed_input, align 4
  %add.ptr17 = getelementptr i8, ptr %data, i32 103
  %22 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr17, align 1
  %arrayidx20 = getelementptr %struct.d5next_data, ptr %3, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx20, align 2
  %add.ptr21 = getelementptr i8, ptr %data, i32 114
  %25 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr21, align 1
  %conv23 = zext i16 %26 to i32
  %mul24 = mul nuw nsw i32 %conv23, 10000
  %power_input = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %power_input to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul24, ptr %power_input, align 4
  %add.ptr26 = getelementptr i8, ptr %data, i32 101
  %28 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr26, align 1
  %conv28 = zext i16 %29 to i32
  %mul29 = mul nuw nsw i32 %conv28, 10000
  %arrayidx31 = getelementptr %struct.d5next_data, ptr %3, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul29, ptr %arrayidx31, align 4
  %add.ptr32 = getelementptr i8, ptr %data, i32 110
  %31 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr32, align 1
  %mul35 = mul i16 %32, 10
  %voltage_input = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %voltage_input to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %mul35, ptr %voltage_input, align 4
  %add.ptr38 = getelementptr i8, ptr %data, i32 97
  %34 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %add.ptr38, align 1
  %mul41 = mul i16 %35, 10
  %arrayidx44 = getelementptr %struct.d5next_data, ptr %3, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %mul41, ptr %arrayidx44, align 2
  %add.ptr45 = getelementptr i8, ptr %data, i32 57
  %37 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add.ptr45, align 1
  %mul48 = mul i16 %38, 10
  %arrayidx51 = getelementptr %struct.d5next_data, ptr %3, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %mul48, ptr %arrayidx51, align 4
  %add.ptr52 = getelementptr i8, ptr %data, i32 112
  %40 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr52, align 1
  %current_input = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %current_input to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %current_input, align 2
  %add.ptr55 = getelementptr i8, ptr %data, i32 99
  %43 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %add.ptr55, align 1
  %arrayidx58 = getelementptr %struct.d5next_data, ptr %3, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx58, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %updated = getelementptr inbounds %struct.d5next_data, ptr %3, i32 0, i32 11
  %47 = ptrtoint ptr %updated to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d5next_debugfs_init(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #7
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef null) #7
  %debugfs = getelementptr inbounds %struct.d5next_data, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %debugfs, align 4
  %call5 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef %priv, ptr noundef nonnull @serial_number_fops) #7
  %8 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs, align 4
  %call7 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 292, ptr noundef %9, ptr noundef %priv, ptr noundef nonnull @firmware_version_fops) #7
  %10 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs, align 4
  %call9 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %priv, ptr noundef nonnull @power_cycles_fops) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @d5next_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 292
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @d5next_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %updated = getelementptr inbounds %struct.d5next_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %updated, align 4
  %add = add i32 %3, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb1
    i32 4, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %temp_input = getelementptr inbounds %struct.d5next_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %temp_input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp_input, align 4
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.d5next_data, ptr %1, i32 0, i32 4, i32 %channel
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr %struct.d5next_data, ptr %1, i32 0, i32 5, i32 %channel
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr %struct.d5next_data, ptr %1, i32 0, i32 6, i32 %channel
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %13 to i32
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr %struct.d5next_data, ptr %1, i32 0, i32 7, i32 %channel
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %15 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %.sink = phi i32 [ %7, %sw.bb ], [ %conv, %sw.bb1 ], [ %11, %sw.bb2 ], [ %conv6, %sw.bb4 ], [ %conv9, %sw.bb7 ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @d5next_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %entry.return.sink.split_crit_edge
    i32 7, label %sw.bb1
    i32 4, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x ptr], ptr @label_speeds, i32 0, i32 %channel
  br label %return.sink.split.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr [2 x ptr], ptr @label_power, i32 0, i32 %channel
  br label %return.sink.split.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr [3 x ptr], ptr @label_voltages, i32 0, i32 %channel
  br label %return.sink.split.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7 = getelementptr [2 x ptr], ptr @label_current, i32 0, i32 %channel
  br label %return.sink.split.sink.split

return.sink.split.sink.split:                     ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1
  %arrayidx7.sink = phi ptr [ %arrayidx7, %sw.bb6 ], [ %arrayidx5, %sw.bb4 ], [ %arrayidx3, %sw.bb2 ], [ %arrayidx, %sw.bb1 ]
  %1 = ptrtoint ptr %arrayidx7.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx7.sink, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %entry.return.sink.split_crit_edge
  %.str.2.sink = phi ptr [ @.str.2, %entry.return.sink.split_crit_edge ], [ %2, %return.sink.split.sink.split ]
  %3 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %.str.2.sink, ptr %str, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_number_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @serial_number_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_number_show(ptr noundef %seqf, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seqf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %serial_number = getelementptr inbounds %struct.d5next_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %serial_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serial_number, align 4
  %arrayidx2 = getelementptr %struct.d5next_data, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seqf, ptr noundef nonnull @.str.25, i32 noundef %3, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @firmware_version_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr noundef %seqf, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seqf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %firmware_version = getelementptr inbounds %struct.d5next_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %firmware_version, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seqf, ptr noundef nonnull @.str.26, i32 noundef %conv) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_cycles_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @power_cycles_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_cycles_show(ptr noundef %seqf, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seqf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %power_cycles = getelementptr inbounds %struct.d5next_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %power_cycles to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_cycles, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seqf, ptr noundef nonnull @.str.26, i32 noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_aquacomputer_d5next__223_358_d5next_init7, !1, !"__initcall__kmod_aquacomputer_d5next__223_358_d5next_init7", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 358, i32 1}
!2 = !{ptr @__exitcall_d5next_exit, !3, !"__exitcall_d5next_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 359, i32 1}
!4 = !{ptr @__UNIQUE_ID_file224, !5, !"__UNIQUE_ID_file224", i1 false, i1 false}
!5 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 361, i32 1}
!6 = !{ptr @__UNIQUE_ID_license225, !5, !"__UNIQUE_ID_license225", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author226, !8, !"__UNIQUE_ID_author226", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 362, i32 1}
!9 = !{ptr @__UNIQUE_ID_description227, !10, !"__UNIQUE_ID_description227", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 363, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 339, i32 10}
!13 = !{ptr @d5next_driver, !14, !"d5next_driver", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 338, i32 26}
!15 = !{ptr @d5next_table, !16, !"d5next_table", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 331, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 301, i32 64}
!19 = !{ptr @d5next_chip_info, !20, !"d5next_chip_info", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 179, i32 37}
!21 = !{ptr @d5next_hwmon_ops, !22, !"d5next_hwmon_ops", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 163, i32 31}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 142, i32 10}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 65, i32 2}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 66, i32 2}
!29 = !{ptr @label_speeds, !30, !"label_speeds", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 64, i32 26}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 70, i32 2}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 71, i32 2}
!35 = !{ptr @label_power, !36, !"label_power", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 69, i32 26}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 75, i32 2}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 76, i32 2}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 77, i32 2}
!43 = !{ptr @label_voltages, !44, !"label_voltages", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 74, i32 26}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 81, i32 2}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 82, i32 2}
!49 = !{ptr @label_current, !50, !"label_current", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 80, i32 26}
!51 = !{ptr @d5next_info, !52, !"d5next_info", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 169, i32 41}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 259, i32 32}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 262, i32 22}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 263, i32 22}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 264, i32 22}
!61 = !{ptr @serial_number_fops, !62, !"serial_number_fops", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 233, i32 1}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 229, i32 19}
!65 = !{ptr @firmware_version_fops, !66, !"firmware_version_fops", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 243, i32 1}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 239, i32 19}
!69 = !{ptr @power_cycles_fops, !70, !"power_cycles_fops", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 253, i32 1}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/aquacomputer_d5next.c", i32 348, i32 9}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
