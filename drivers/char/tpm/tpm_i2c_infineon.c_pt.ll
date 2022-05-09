; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_i2c_infineon.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_i2c_infineon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.tpm_inf_dev = type { ptr, i32, [1261 x i8], ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_tpm_i2c_infineon__292_731_tpm_tis_i2c_driver_init6 = internal global ptr @tpm_tis_i2c_driver_init, section ".initcall6.init", align 4
@tpm_tis_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tpm_tis_i2c_probe, ptr @tpm_tis_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tpm_tis_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tpm_tis_i2c_ops, ptr null, ptr null }, ptr @tpm_tis_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tpm_tis_i2c_driver_exit = internal global ptr @tpm_tis_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"tpm_i2c_infineon.author=Peter Huewe <peter.huewe@infineon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [57 x i8] c"tpm_i2c_infineon.description=TPM TIS I2C Infineon Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [31 x i8] c"tpm_i2c_infineon.version=2.2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpm_i2c_infineon\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.2.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file296 = internal constant [56 x i8] c"tpm_i2c_infineon.file=drivers/char/tpm/tpm_i2c_infineon\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [29 x i8] c"tpm_i2c_infineon.license=GPL\00", section ".modinfo", align 1
@tpm_tis_i2c_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,tpm_i2c_infineon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,slb9635tt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,slb9645tt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_table = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tpm_i2c_infineon\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"slb9635tt\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"slb9645tt\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tpm_dev = internal global { %struct.tpm_inf_dev, [348 x i8] } zeroinitializer, align 32
@tpm_tis_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 691, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"This driver only supports one client at a time\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm_tis_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/char/tpm/tpm_i2c_infineon.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_probe._entry_ptr = internal global ptr @tpm_tis_i2c_probe._entry, section ".printk_index", align 4
@tpm_tis_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 696, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no algorithms associated to the i2c bus\0A\00", [55 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_probe._entry_ptr.10 = internal global ptr @tpm_tis_i2c_probe._entry.8, section ".printk_index", align 4
@tpm_tis_i2c = internal constant { %struct.tpm_class_ops, [40 x i8] } { %struct.tpm_class_ops { i32 1, i8 -112, i8 -112, ptr @tpm_tis_i2c_req_canceled, ptr @tpm_tis_i2c_recv, ptr @tpm_tis_i2c_send, ptr @tpm_tis_i2c_ready, ptr @tpm_tis_i2c_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 629, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not request locality\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpm_tis_i2c_init\00", [47 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_init._entry_ptr = internal global ptr @tpm_tis_i2c_init._entry, section ".printk_index", align 4
@tpm_tis_i2c_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 636, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not read vendor id\0A\00", [38 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_init._entry_ptr.15 = internal global ptr @tpm_tis_i2c_init._entry.13, section ".printk_index", align 4
@tpm_tis_i2c_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.5, i32 646, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vendor id did not match! ID was %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_init._entry_ptr.18 = internal global ptr @tpm_tis_i2c_init._entry.16, section ".printk_index", align 4
@tpm_tis_i2c_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.5, i32 651, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"1.2 TPM (device-id 0x%X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_init._entry_ptr.22 = internal global ptr @tpm_tis_i2c_init._entry.19, section ".printk_index", align 4
@tpm_tis_i2c_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 482, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to read header\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpm_tis_i2c_recv\00", [47 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_recv._entry_ptr = internal global ptr @tpm_tis_i2c_recv._entry, section ".printk_index", align 4
@tpm_tis_i2c_recv._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 495, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to read remainder of result\0A\00", [60 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_recv._entry_ptr.27 = internal global ptr @tpm_tis_i2c_recv._entry.25, section ".printk_index", align 4
@tpm_tis_i2c_recv._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.5, i32 502, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error left over data\0A\00", [42 x i8] zeroinitializer }, align 32
@tpm_tis_i2c_recv._entry_ptr.30 = internal global ptr @tpm_tis_i2c_recv._entry.28, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1709521, i64 3507817216]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"tpm_tis_i2c_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 720, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 734, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"tpm_tis_i2c_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 673, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"tpm_tis_i2c_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 682, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"tpm_tis_i2c_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 663, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"tpm_dev\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 71, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 691, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 696, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"tpm_tis_i2c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 601, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 629, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 636, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 646, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 651, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 482, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 495, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [39 x i8] c"../drivers/char/tpm/tpm_i2c_infineon.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 502, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_version295, ptr @__exitcall_tpm_tis_i2c_driver_exit, ptr @__initcall__kmod_tpm_i2c_infineon__292_731_tpm_tis_i2c_driver_init6, ptr @__modver_attr, ptr @tpm_tis_i2c_driver_exit, ptr @tpm_tis_i2c_init._entry, ptr @tpm_tis_i2c_init._entry.13, ptr @tpm_tis_i2c_init._entry.16, ptr @tpm_tis_i2c_init._entry.19, ptr @tpm_tis_i2c_init._entry_ptr, ptr @tpm_tis_i2c_init._entry_ptr.15, ptr @tpm_tis_i2c_init._entry_ptr.18, ptr @tpm_tis_i2c_init._entry_ptr.22, ptr @tpm_tis_i2c_probe._entry, ptr @tpm_tis_i2c_probe._entry.8, ptr @tpm_tis_i2c_probe._entry_ptr, ptr @tpm_tis_i2c_probe._entry_ptr.10, ptr @tpm_tis_i2c_recv._entry, ptr @tpm_tis_i2c_recv._entry.25, ptr @tpm_tis_i2c_recv._entry.28, ptr @tpm_tis_i2c_recv._entry_ptr, ptr @tpm_tis_i2c_recv._entry_ptr.27, ptr @tpm_tis_i2c_recv._entry_ptr.30, ptr @tpm_tis_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tpm_tis_i2c_of_match, ptr @tpm_tis_i2c_ops, ptr @tpm_tis_i2c_table, ptr @tpm_dev, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @tpm_tis_i2c, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_dev to i32), i32 1284, i32 1632, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_recv._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_i2c_recv._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tpm_tis_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tpm_tis_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tpm_tis_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i.i = alloca i8, align 1
  %vendor.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %0 = load ptr, ptr @tpm_dev, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end5, label %if.end6

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  store ptr %client, ptr @tpm_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendor.i) #7
  %7 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %vendor.i, align 4, !annotation !80
  %call.i = tail call ptr @tpmm_chip_alloc(ptr noundef %dev1, ptr noundef nonnull @tpm_tis_i2c) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.critedge, label %if.end.i

if.end.i:                                         ; preds = %if.end6
  %timeout_a.i = getelementptr inbounds %struct.tpm_chip, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %timeout_a.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 75, ptr %timeout_a.i, align 8
  %timeout_b.i = getelementptr inbounds %struct.tpm_chip, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %timeout_b.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 200, ptr %timeout_b.i, align 4
  %timeout_c.i = getelementptr inbounds %struct.tpm_chip, ptr %call.i, i32 0, i32 17
  %10 = ptrtoint ptr %timeout_c.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 75, ptr %timeout_c.i, align 8
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %call.i, i32 0, i32 18
  %11 = ptrtoint ptr %timeout_d.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 75, ptr %timeout_d.i, align 4
  %call7.i = tail call fastcc i32 @request_locality(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %tpm_tis_i2c_init.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = call fastcc i32 @iic_tpm_read(i8 noundef zeroext 6, ptr noundef nonnull %vendor.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end15.i, label %if.end16.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  br label %out_release.i

if.end16.i:                                       ; preds = %if.end9.i
  %12 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vendor.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end24.i [
    i32 1709521, label %if.end16.i.do.end29.i_crit_edge
    i32 -787150080, label %if.then20.i
  ]

if.end16.i.do.end29.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29.i

do.end24.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %13) #10
  br label %out_release.i

do.end29.i:                                       ; preds = %if.then20.i, %if.end16.i.do.end29.i_crit_edge
  %storemerge.i = phi i32 [ 0, %if.then20.i ], [ 1, %if.end16.i.do.end29.i_crit_edge ]
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 4), align 4
  %shr.i = lshr i32 %13, 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %shr.i) #10
  store ptr %call.i, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 3), align 4
  %call30.i = call i32 @tpm_chip_register(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %phi.cmp = icmp eq i32 %call30.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor.i) #7
  br i1 %phi.cmp, label %do.end29.i.cleanup_crit_edge, label %do.end29.i.if.then10_crit_edge

do.end29.i.if.then10_crit_edge:                   ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

do.end29.i.cleanup_crit_edge:                     ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_release.i:                                    ; preds = %do.end24.i, %do.end15.i
  %15 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #7
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !80
  %loc.tr.i.i = trunc i32 %15 to i8
  %conv.i.i = shl i8 %loc.tr.i.i, 4
  %call.i.i18 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.i46.i = icmp slt i32 %call.i.i18, 0
  br i1 %cmp.i46.i, label %out_release.i.release_locality.exit.i_crit_edge, label %if.end.i.i

out_release.i.release_locality.exit.i_crit_edge:  ; preds = %out_release.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_locality.exit.i

if.end.i.i:                                       ; preds = %out_release.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %buf.i.i, align 1
  %call.i.i.i = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  br label %release_locality.exit.i

release_locality.exit.i:                          ; preds = %if.end.i.i, %out_release.i.release_locality.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #7
  br label %tpm_tis_i2c_init.exit.thread

tpm_tis_i2c_init.exit.thread:                     ; preds = %release_locality.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor.i) #7
  br label %if.then10

if.then10.critedge:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor.i) #7
  br label %if.then10

if.then10:                                        ; preds = %if.then10.critedge, %tpm_tis_i2c_init.exit.thread, %do.end29.i.if.then10_crit_edge
  store ptr null, ptr @tpm_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.end29.i.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -19, %do.end5 ], [ -19, %if.then10 ], [ 0, %do.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_remove(ptr nocapture noundef readnone %client) #2 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 3), align 4
  tail call void @tpm_chip_unregister(ptr noundef %0) #7
  %1 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i, align 1, !annotation !80
  %loc.tr.i = trunc i32 %1 to i8
  %conv.i = shl i8 %loc.tr.i, 4
  %call.i = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.release_locality.exit_crit_edge, label %if.end.i

entry.release_locality.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_locality.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %buf.i, align 1
  %call.i.i = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  br label %release_locality.exit

release_locality.exit:                            ; preds = %if.end.i, %entry.release_locality.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  store ptr null, ptr @tpm_dev, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpmm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_locality(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  %buf.i2 = alloca i8, align 1
  %buf.i = alloca i8, align 1
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf.i, align 1, !annotation !80
  %call.i = call fastcc i32 @iic_tpm_read(i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf.i, align 1
  %4 = and i8 %3, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %4)
  %cmp3.i = icmp eq i8 %4, -96
  br i1 %cmp3.i, label %check_locality.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

check_locality.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  %call.i1 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %6 = ptrtoint ptr %timeout_a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout_a, align 8
  %8 = add i32 %7, %5
  br label %do.body

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i2) #7
  %9 = ptrtoint ptr %buf.i2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %buf.i2, align 1, !annotation !80
  %call.i3 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext 0, ptr noundef nonnull %buf.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i4 = icmp slt i32 %call.i3, 0
  br i1 %cmp.i4, label %do.body.if.end4_crit_edge, label %if.end.i6

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.i6:                                        ; preds = %do.body
  %10 = ptrtoint ptr %buf.i2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.i2, align 1
  %12 = and i8 %11, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %12)
  %cmp3.i5 = icmp eq i8 %12, -96
  br i1 %cmp3.i5, label %check_locality.exit9, label %if.end.i6.if.end4_crit_edge

if.end.i6.if.end4_crit_edge:                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

check_locality.exit9:                             ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i2) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end.i6.if.end4_crit_edge, %do.body.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i2) #7
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %13, %8
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end4.do.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %check_locality.exit9, %check_locality.exit
  %retval.0 = phi i32 [ 0, %check_locality.exit ], [ 0, %check_locality.exit9 ], [ -62, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iic_tpm_read(i8 noundef zeroext %addr, ptr noundef %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  %msg1 = alloca %struct.i2c_msg, align 4
  %msg2 = alloca %struct.i2c_msg, align 4
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg1) #7
  %1 = getelementptr inbounds i8, ptr %msg1, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = load ptr, ptr @tpm_dev, align 4
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr2, align 2
  %6 = ptrtoint ptr %msg1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg1, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 2
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len3, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr.addr, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg2) #7
  %10 = getelementptr inbounds i8, ptr %msg2, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %12 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr2, align 2
  %14 = ptrtoint ptr %msg2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg2, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 1
  %15 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 2
  %conv = trunc i32 %len to i16
  %16 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 3
  %17 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buffer, ptr %buf8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %18 = call ptr @memcpy(ptr %msgs, ptr %msg1, i32 12)
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %19 = call ptr @memcpy(ptr %arrayinit.element, ptr %msg2, i32 12)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %algo, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock_ops.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  call void %29(ptr noundef %21, i32 noundef 2) #7
  %30 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp = icmp eq i32 %30, 1
  br i1 %cmp, label %for.body.preheader, label %while.cond.preheader

for.body.preheader:                               ; preds = %if.end
  %31 = load ptr, ptr @tpm_dev, align 4
  %adapter14 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %adapter14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter14, align 8
  %call = call i32 @__i2c_transfer(ptr noundef %33, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp sgt i32 %call, 0
  br i1 %cmp15, label %for.body.preheader.out_crit_edge, label %if.end18

for.body.preheader.out_crit_edge:                 ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp19.not112 = icmp eq i32 %len, 0
  br i1 %cmp19.not112, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.for.cond21.preheader_crit_edge

while.cond.preheader.for.cond21.preheader_crit_edge: ; preds = %while.cond.preheader
  br label %for.cond21.preheader

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18:                                         ; preds = %for.body.preheader
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %34 = load ptr, ptr @tpm_dev, align 4
  %adapter14.1 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %adapter14.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter14.1, align 8
  %call.1 = call i32 @__i2c_transfer(ptr noundef %36, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp15.1 = icmp sgt i32 %call.1, 0
  br i1 %cmp15.1, label %if.end18.out_crit_edge, label %if.end18.1

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18.1:                                       ; preds = %if.end18
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %37 = load ptr, ptr @tpm_dev, align 4
  %adapter14.2 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %adapter14.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter14.2, align 8
  %call.2 = call i32 @__i2c_transfer(ptr noundef %39, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp15.2 = icmp sgt i32 %call.2, 0
  br i1 %cmp15.2, label %if.end18.1.out_crit_edge, label %if.end18.2

if.end18.1.out_crit_edge:                         ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18.2:                                       ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  br label %out

for.cond21.preheader:                             ; preds = %for.end67.for.cond21.preheader_crit_edge, %while.cond.preheader.for.cond21.preheader_crit_edge
  %msglen.0114 = phi i32 [ %msglen.2.lcssa, %for.end67.for.cond21.preheader_crit_edge ], [ %len, %while.cond.preheader.for.cond21.preheader_crit_edge ]
  %len.addr.0113 = phi i32 [ %67, %for.end67.for.cond21.preheader_crit_edge ], [ %len, %while.cond.preheader.for.cond21.preheader_crit_edge ]
  %40 = load ptr, ptr @tpm_dev, align 4
  %adapter25 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %adapter25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter25, align 8
  %call26 = call i32 @__i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %for.cond21.preheader.for.body41.preheader_crit_edge, label %if.end30

for.cond21.preheader.for.body41.preheader_crit_edge: ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.preheader

if.end30:                                         ; preds = %for.cond21.preheader
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %43 = load ptr, ptr @tpm_dev, align 4
  %adapter25.1 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %adapter25.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter25.1, align 8
  %call26.1 = call i32 @__i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %cmp27.1 = icmp sgt i32 %call26.1, 0
  br i1 %cmp27.1, label %if.end30.for.body41.preheader_crit_edge, label %if.end30.1

if.end30.for.body41.preheader_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.preheader

if.end30.1:                                       ; preds = %if.end30
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %46 = load ptr, ptr @tpm_dev, align 4
  %adapter25.2 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %adapter25.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter25.2, align 8
  %call26.2 = call i32 @__i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2)
  %cmp27.2 = icmp sgt i32 %call26.2, 0
  br i1 %cmp27.2, label %if.end30.1.for.body41.preheader_crit_edge, label %for.end33

if.end30.1.for.body41.preheader_crit_edge:        ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.preheader

for.end33:                                        ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  br label %out

for.body41.preheader:                             ; preds = %if.end30.1.for.body41.preheader_crit_edge, %if.end30.for.body41.preheader_crit_edge, %for.cond21.preheader.for.body41.preheader_crit_edge
  %49 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool42.not = icmp eq i32 %49, 0
  br i1 %tobool42.not, label %for.body41.preheader.if.end48_crit_edge, label %if.then43

for.body41.preheader.if.end48_crit_edge:          ; preds = %for.body41.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then43:                                        ; preds = %for.body41.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 %len.addr.0113)
  %conv46 = trunc i32 %50 to i16
  %51 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv46, ptr %len7, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %for.body41.preheader.if.end48_crit_edge
  %msglen.2 = phi i32 [ %50, %if.then43 ], [ %msglen.0114, %for.body41.preheader.if.end48_crit_edge ]
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %52 = load ptr, ptr @tpm_dev, align 4
  %adapter49 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %adapter49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter49, align 8
  %call50 = call i32 @__i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp sgt i32 %call50, 0
  br i1 %cmp51, label %if.end48.for.end67_crit_edge, label %if.end60

if.end48.for.end67_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end67

if.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call50)
  %cmp61 = icmp eq i32 %call50, -95
  br i1 %cmp61, label %for.inc65.thread, label %for.inc65

for.inc65.thread:                                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  store i32 32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  br label %if.then43.1

for.inc65:                                        ; preds = %if.end60
  %.pr = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool42.not.1 = icmp eq i32 %.pr, 0
  br i1 %tobool42.not.1, label %for.inc65.if.end48.1_crit_edge, label %for.inc65.if.then43.1_crit_edge

for.inc65.if.then43.1_crit_edge:                  ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.1

for.inc65.if.end48.1_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.1

if.then43.1:                                      ; preds = %for.inc65.if.then43.1_crit_edge, %for.inc65.thread
  %55 = phi i32 [ 32, %for.inc65.thread ], [ %.pr, %for.inc65.if.then43.1_crit_edge ]
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 %len.addr.0113)
  %conv46.1 = trunc i32 %56 to i16
  %57 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv46.1, ptr %len7, align 4
  br label %if.end48.1

if.end48.1:                                       ; preds = %if.then43.1, %for.inc65.if.end48.1_crit_edge
  %msglen.2.1 = phi i32 [ %56, %if.then43.1 ], [ %msglen.2, %for.inc65.if.end48.1_crit_edge ]
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %58 = load ptr, ptr @tpm_dev, align 4
  %adapter49.1 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %adapter49.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter49.1, align 8
  %call50.1 = call i32 @__i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.1)
  %cmp51.1 = icmp sgt i32 %call50.1, 0
  br i1 %cmp51.1, label %if.end48.1.for.end67_crit_edge, label %if.end60.1

if.end48.1.for.end67_crit_edge:                   ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end67

if.end60.1:                                       ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call50.1)
  %cmp61.1 = icmp eq i32 %call50.1, -95
  br i1 %cmp61.1, label %for.inc65.1.thread, label %for.inc65.1

for.inc65.1.thread:                               ; preds = %if.end60.1
  call void @__sanitizer_cov_trace_pc() #9
  store i32 32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  br label %if.then43.2

for.inc65.1:                                      ; preds = %if.end60.1
  %.pr126 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr126)
  %tobool42.not.2 = icmp eq i32 %.pr126, 0
  br i1 %tobool42.not.2, label %for.inc65.1.if.end48.2_crit_edge, label %for.inc65.1.if.then43.2_crit_edge

for.inc65.1.if.then43.2_crit_edge:                ; preds = %for.inc65.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.2

for.inc65.1.if.end48.2_crit_edge:                 ; preds = %for.inc65.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.2

if.then43.2:                                      ; preds = %for.inc65.1.if.then43.2_crit_edge, %for.inc65.1.thread
  %61 = phi i32 [ 32, %for.inc65.1.thread ], [ %.pr126, %for.inc65.1.if.then43.2_crit_edge ]
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 %len.addr.0113)
  %conv46.2 = trunc i32 %62 to i16
  %63 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv46.2, ptr %len7, align 4
  br label %if.end48.2

if.end48.2:                                       ; preds = %if.then43.2, %for.inc65.1.if.end48.2_crit_edge
  %msglen.2.2 = phi i32 [ %62, %if.then43.2 ], [ %msglen.2.1, %for.inc65.1.if.end48.2_crit_edge ]
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %64 = load ptr, ptr @tpm_dev, align 4
  %adapter49.2 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %adapter49.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter49.2, align 8
  %call50.2 = call i32 @__i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.2)
  %cmp51.2 = icmp sgt i32 %call50.2, 0
  br i1 %cmp51.2, label %if.end48.2.for.end67_crit_edge, label %if.end60.2

if.end48.2.for.end67_crit_edge:                   ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end67

if.end60.2:                                       ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call50.2)
  %cmp61.2 = icmp eq i32 %call50.2, -95
  br i1 %cmp61.2, label %if.then63.2, label %if.end60.2.out_crit_edge

if.end60.2.out_crit_edge:                         ; preds = %if.end60.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then63.2:                                      ; preds = %if.end60.2
  call void @__sanitizer_cov_trace_pc() #9
  store i32 32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 5), align 4
  br label %out

for.end67:                                        ; preds = %if.end48.2.for.end67_crit_edge, %if.end48.1.for.end67_crit_edge, %if.end48.for.end67_crit_edge
  %msglen.2.lcssa = phi i32 [ %msglen.2, %if.end48.for.end67_crit_edge ], [ %msglen.2.1, %if.end48.1.for.end67_crit_edge ], [ %msglen.2.2, %if.end48.2.for.end67_crit_edge ]
  %call50.lcssa = phi i32 [ %call50, %if.end48.for.end67_crit_edge ], [ %call50.1, %if.end48.1.for.end67_crit_edge ], [ %call50.2, %if.end48.2.for.end67_crit_edge ]
  %67 = call i32 @llvm.usub.sat.i32(i32 %len.addr.0113, i32 %msglen.2.lcssa)
  %68 = ptrtoint ptr %buf8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf8, align 4
  %add.ptr = getelementptr i8, ptr %69, i32 %msglen.2.lcssa
  store ptr %add.ptr, ptr %buf8, align 4
  %cmp19.not.not = icmp ugt i32 %len.addr.0113, %msglen.2.lcssa
  br i1 %cmp19.not.not, label %for.end67.for.cond21.preheader_crit_edge, label %for.end67.out_crit_edge

for.end67.out_crit_edge:                          ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.end67.for.cond21.preheader_crit_edge:         ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader

out:                                              ; preds = %for.end67.out_crit_edge, %if.then63.2, %if.end60.2.out_crit_edge, %for.end33, %if.end18.2, %if.end18.1.out_crit_edge, %if.end18.out_crit_edge, %while.cond.preheader.out_crit_edge, %for.body.preheader.out_crit_edge
  %rc.6 = phi i32 [ 0, %while.cond.preheader.out_crit_edge ], [ %call, %for.body.preheader.out_crit_edge ], [ %call.1, %if.end18.out_crit_edge ], [ %call.2, %if.end18.1.out_crit_edge ], [ %call.2, %if.end18.2 ], [ %call26.2, %for.end33 ], [ -95, %if.then63.2 ], [ %call50.2, %if.end60.2.out_crit_edge ], [ %call50.lcssa, %for.end67.out_crit_edge ]
  %70 = load ptr, ptr @tpm_dev, align 4
  %adapter73 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %adapter73 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter73, align 8
  %lock_ops.i104 = getelementptr inbounds %struct.i2c_adapter, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %lock_ops.i104 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock_ops.i104, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %unlock_bus.i, align 4
  call void %76(ptr noundef %72, i32 noundef 2) #7
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.6)
  %cmp74.inv = icmp sgt i32 %rc.6, 0
  %spec.select = select i1 %cmp74.inv, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg2) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg1) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tpm_tis_i2c_req_canceled(ptr nocapture noundef readnone %chip, i8 noundef zeroext %status) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %status)
  %cmp = icmp eq i8 %status, 64
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_recv(ptr noundef %chip, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %buf.i40 = alloca i8, align 1
  %buf.i = alloca i8, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count)
  %cmp = icmp ult i32 %count, 10
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @recv_data(ptr noundef %chip, ptr noundef %buf, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call)
  %cmp1 = icmp slt i32 %call, 10
  br i1 %cmp1, label %if.end.out.sink.split_crit_edge, label %if.end3

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end3:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %count)
  %cmp4 = icmp ugt i32 %2, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %cmp5 = icmp ult i32 %2, 10
  %or.cond = or i1 %cmp4, %cmp5
  br i1 %or.cond, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end3
  %arrayidx = getelementptr i8, ptr %buf, i32 10
  %sub = add i32 %2, -10
  %call8 = tail call fastcc i32 @recv_data(ptr noundef %chip, ptr noundef %arrayidx, i32 noundef %sub)
  %add = add i32 %call8, %call
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp9 = icmp ult i32 %add, %2
  br i1 %cmp9, label %if.end7.out.sink.split_crit_edge, label %if.end15

if.end7.out.sink.split_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end15:                                         ; preds = %if.end7
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %3 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout_c, align 8
  %call16 = call fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext -128, i32 noundef %4, ptr noundef nonnull %status)
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15.out_crit_edge, label %if.end15.out.sink.split_crit_edge

if.end15.out.sink.split_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out.sink.split:                                   ; preds = %if.end15.out.sink.split_crit_edge, %if.end7.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.23, %if.end.out.sink.split_crit_edge ], [ @.str.26, %if.end7.out.sink.split_crit_edge ], [ @.str.29, %if.end15.out.sink.split_crit_edge ]
  %size.0.ph = phi i32 [ %call, %if.end.out.sink.split_crit_edge ], [ -62, %if.end7.out.sink.split_crit_edge ], [ -5, %if.end15.out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull %.str.29.sink) #10
  br label %out

out:                                              ; preds = %out.sink.split, %if.end15.out_crit_edge, %if.end3.out_crit_edge, %entry.out_crit_edge
  %size.0 = phi i32 [ %add, %if.end15.out_crit_edge ], [ -5, %entry.out_crit_edge ], [ -5, %if.end3.out_crit_edge ], [ %size.0.ph, %out.sink.split ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %buf.i, align 1
  %8 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i = trunc i32 %8 to i8
  %9 = shl i8 %.tr.i, 4
  %conv.i = or i8 %9, 1
  %call.i.i = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  tail call void @usleep_range_state(i32 noundef 2400, i32 noundef 2600, i32 noundef 2) #7
  %10 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i40) #7
  %11 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %buf.i40, align 1, !annotation !80
  %loc.tr.i = trunc i32 %10 to i8
  %conv.i41 = shl i8 %loc.tr.i, 4
  %call.i = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i41, ptr noundef nonnull %buf.i40, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %out.release_locality.exit_crit_edge, label %if.end.i

out.release_locality.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_locality.exit

if.end.i:                                         ; preds = %out
  %12 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf.i40, align 1
  %14 = and i8 %13, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %14)
  %cmp3.i = icmp eq i8 %14, -124
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.release_locality.exit_crit_edge

if.end.i.release_locality.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_locality.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i40, align 1
  %call.i.i42 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv.i41, ptr noundef nonnull %buf.i40, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  br label %release_locality.exit

release_locality.exit:                            ; preds = %if.then5.i, %if.end.i.release_locality.exit_crit_edge, %out.release_locality.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i40) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_i2c_send(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %buf.i118 = alloca i8, align 1
  %buf.i114 = alloca i8, align 1
  %buf.i103 = alloca [3 x i8], align 1
  %buf.i100 = alloca i8, align 1
  %buf.i = alloca i8, align 1
  %status = alloca i32, align 4
  %sts = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sts) #7
  %0 = ptrtoint ptr %sts to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 32, ptr %sts, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1260, i32 %len)
  %cmp = icmp ugt i32 %len, 1260
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @request_locality(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end3
  %i.0.i = phi i8 [ 0, %if.end3 ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %2 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i = trunc i32 %2 to i8
  %3 = shl i8 %.tr.i, 4
  %conv.i = or i8 %3, 1
  %call.i = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tpm_tis_i2c_status.exit.thread, label %if.end.i

tpm_tis_i2c_status.exit.thread:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  br label %if.then7

if.end.i:                                         ; preds = %do.body.i
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp3.i = icmp eq i8 %6, -1
  %inc.i = add nuw nsw i8 %i.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %i.0.i)
  %cmp6.i = icmp ult i8 %i.0.i, 9
  %or.cond.i = select i1 %cmp3.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.end.i.do.body.i_crit_edge, label %tpm_tis_i2c_status.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

tpm_tis_i2c_status.exit:                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %status, align 4
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %tpm_tis_i2c_status.exit.if.then7_crit_edge, label %tpm_tis_i2c_status.exit.if.end13_crit_edge

tpm_tis_i2c_status.exit.if.end13_crit_edge:       ; preds = %tpm_tis_i2c_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

tpm_tis_i2c_status.exit.if.then7_crit_edge:       ; preds = %tpm_tis_i2c_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %tpm_tis_i2c_status.exit.if.then7_crit_edge, %tpm_tis_i2c_status.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i100) #7
  %8 = ptrtoint ptr %buf.i100 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %buf.i100, align 1
  %9 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i101 = trunc i32 %9 to i8
  %10 = shl i8 %.tr.i101, 4
  %conv.i102 = or i8 %10, 1
  %call.i.i = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv.i102, ptr noundef nonnull %buf.i100, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i100) #7
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %11 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout_b, align 4
  %call8 = call fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext 64, i32 noundef %12, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.out_err_crit_edge, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7.out_err_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %tpm_tis_i2c_status.exit.if.end13_crit_edge
  %sub = add i32 %len, -1
  %13 = getelementptr inbounds [3 x i8], ptr %buf.i103, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %buf.i103, i32 0, i32 2
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %if.end43.while.cond_crit_edge, %if.end13
  %count.0 = phi i32 [ 0, %if.end13 ], [ %count.1, %if.end43.while.cond_crit_edge ]
  %retries.0 = phi i8 [ 0, %if.end13 ], [ %retries.1, %if.end43.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count.0)
  %cmp14 = icmp ugt i32 %sub, %count.0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i103) #7
  %15 = ptrtoint ptr %buf.i103 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %buf.i103, align 1, !annotation !80
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %13, align 1, !annotation !80
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %14, align 1, !annotation !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %timeout_d.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout_d.i, align 4
  %21 = add i32 %20, %18
  br label %do.body.i108

do.body.i108:                                     ; preds = %if.end13.i.do.body.i108_crit_edge, %while.body
  %22 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i104 = trunc i32 %22 to i8
  %23 = shl i8 %.tr.i104, 4
  %conv.i105 = or i8 %23, 2
  %call.i106 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i105, ptr noundef nonnull %buf.i103, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  br i1 %cmp.i107, label %do.body.i108.if.end13.i_crit_edge, label %if.end.i109

do.body.i108.if.end13.i_crit_edge:                ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end.i109:                                      ; preds = %do.body.i108
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %14, align 1
  %conv3.i = zext i8 %25 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %13, align 1
  %conv6.i = zext i8 %27 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %add8.i = or i32 %shl7.i, %shl4.i
  %28 = ptrtoint ptr %buf.i103 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf.i103, align 1
  %conv10.i = zext i8 %29 to i32
  %add11.i = or i32 %add8.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i)
  %tobool.not.i = icmp eq i32 %add11.i, 0
  br i1 %tobool.not.i, label %if.end.i109.if.end13.i_crit_edge, label %if.end20

if.end.i109.if.end13.i_crit_edge:                 ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i109.if.end13.i_crit_edge, %do.body.i108.if.end13.i_crit_edge
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %30, %21
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.end13.i.do.body.i108_crit_edge, label %get_burstcount.exit.thread

if.end13.i.do.body.i108_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i108

get_burstcount.exit.thread:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i103) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end.i109
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i103) #7
  %sub22 = sub i32 %sub, %count.0
  %31 = call i32 @llvm.umin.i32(i32 %add11.i, i32 %sub22)
  %32 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr99 = trunc i32 %32 to i8
  %33 = shl i8 %.tr99, 4
  %conv29 = or i8 %33, 5
  %arrayidx = getelementptr i8, ptr %buf, i32 %count.0
  %call.i111 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv29, ptr noundef %arrayidx, i32 noundef %31, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp31 = icmp eq i32 %call.i111, 0
  %not.cmp31 = xor i1 %cmp31, true
  %inc = zext i1 %not.cmp31 to i8
  %retries.1 = add i8 %retries.0, %inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %retries.1)
  %cmp40 = icmp ugt i8 %retries.1, 50
  br i1 %cmp40, label %if.end20.out_err_crit_edge, label %if.end43

if.end20.out_err_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end43:                                         ; preds = %if.end20
  %add = select i1 %cmp31, i32 %31, i32 0
  %count.1 = add i32 %add, %count.0
  %34 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout_c, align 8
  %call44 = call fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext -128, i32 noundef %35, ptr noundef nonnull %status)
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %and45 = and i32 %37, 8
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %if.end43.out_err_crit_edge, label %if.end43.while.cond_crit_edge

if.end43.while.cond_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end43.out_err_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

while.end:                                        ; preds = %while.cond
  %38 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr = trunc i32 %38 to i8
  %39 = shl i8 %.tr, 4
  %conv52 = or i8 %39, 5
  %arrayidx53 = getelementptr i8, ptr %buf, i32 %count.0
  %call.i112 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv52, ptr noundef %arrayidx53, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  %40 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %timeout_c, align 8
  %call56 = call fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext -128, i32 noundef %41, ptr noundef nonnull %status)
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %and57 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %cmp58.not = icmp eq i32 %and57, 0
  br i1 %cmp58.not, label %if.end61, label %while.end.out_err_crit_edge

while.end.out_err_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end61:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr98 = trunc i32 %44 to i8
  %45 = shl i8 %.tr98, 4
  %conv64 = or i8 %45, 1
  %call.i113 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv64, ptr noundef nonnull %sts, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  br label %cleanup

out_err:                                          ; preds = %while.end.out_err_crit_edge, %if.end43.out_err_crit_edge, %if.end20.out_err_crit_edge, %if.then7.out_err_crit_edge
  %rc.0 = phi i32 [ -62, %if.then7.out_err_crit_edge ], [ -5, %while.end.out_err_crit_edge ], [ -5, %if.end20.out_err_crit_edge ], [ -5, %if.end43.out_err_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i114) #7
  %46 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 64, ptr %buf.i114, align 1
  %47 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i115 = trunc i32 %47 to i8
  %48 = shl i8 %.tr.i115, 4
  %conv.i116 = or i8 %48, 1
  %call.i.i117 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv.i116, ptr noundef nonnull %buf.i114, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i114) #7
  call void @usleep_range_state(i32 noundef 2400, i32 noundef 2600, i32 noundef 2) #7
  %49 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i118) #7
  %50 = ptrtoint ptr %buf.i118 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %buf.i118, align 1, !annotation !80
  %loc.tr.i = trunc i32 %49 to i8
  %conv.i119 = shl i8 %loc.tr.i, 4
  %call.i120 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i119, ptr noundef nonnull %buf.i118, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %out_err.release_locality.exit_crit_edge, label %if.end.i122

out_err.release_locality.exit_crit_edge:          ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_locality.exit

if.end.i122:                                      ; preds = %out_err
  %51 = ptrtoint ptr %buf.i118 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buf.i118, align 1
  %53 = and i8 %52, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %53)
  %cmp3.i123 = icmp eq i8 %53, -124
  br i1 %cmp3.i123, label %if.then5.i, label %if.end.i122.release_locality.exit_crit_edge

if.end.i122.release_locality.exit_crit_edge:      ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_locality.exit

if.then5.i:                                       ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %buf.i118 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 32, ptr %buf.i118, align 1
  %call.i.i124 = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv.i119, ptr noundef nonnull %buf.i118, i32 noundef 1, i32 noundef 55, i32 noundef 65, i8 noundef zeroext 3) #7
  br label %release_locality.exit

release_locality.exit:                            ; preds = %if.then5.i, %if.end.i122.release_locality.exit_crit_edge, %out_err.release_locality.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i118) #7
  br label %cleanup

cleanup:                                          ; preds = %release_locality.exit, %if.end61, %get_burstcount.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %release_locality.exit ], [ 0, %if.end61 ], [ -7, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %get_burstcount.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpm_tis_i2c_ready(ptr nocapture noundef readnone %chip) #2 align 64 {
entry:
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 64, ptr %buf, align 1
  %1 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr = trunc i32 %1 to i8
  %2 = shl i8 %.tr, 4
  %conv = or i8 %2, 1
  %call.i = call fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %conv, ptr noundef nonnull %buf, i32 noundef 1, i32 noundef 200, i32 noundef 220, i8 noundef zeroext 50) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tpm_tis_i2c_status(ptr nocapture noundef readnone %chip) #2 align 64 {
entry:
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i8 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %1 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr = trunc i32 %1 to i8
  %2 = shl i8 %.tr, 4
  %conv = or i8 %2, 1
  %call = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp3 = icmp eq i8 %4, -1
  %inc = add nuw nsw i8 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %i.0)
  %cmp6 = icmp ult i8 %i.0, 9
  %or.cond = select i1 %cmp3, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.body.cleanup_crit_edge ], [ %4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_data(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %size.0 = phi i32 [ 0, %entry ], [ %size.1, %if.end.while.cond_crit_edge ]
  %retries.0 = phi i8 [ 0, %entry ], [ %retries.1, %if.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %count)
  %cmp = icmp ult i32 %size.0, %count
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i, align 1, !annotation !80
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %0, align 1, !annotation !80
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %1, align 1, !annotation !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = ptrtoint ptr %timeout_d.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout_d.i, align 4
  %8 = add i32 %7, %5
  br label %do.body.i

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %while.body
  %9 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i = trunc i32 %9 to i8
  %10 = shl i8 %.tr.i, 4
  %conv.i = or i8 %10, 2
  %call.i = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.if.end13.i_crit_edge, label %if.end.i

do.body.i.if.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end.i:                                         ; preds = %do.body.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %conv3.i = zext i8 %12 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  %conv6.i = zext i8 %14 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %add8.i = or i32 %shl7.i, %shl4.i
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.i, align 1
  %conv10.i = zext i8 %16 to i32
  %add11.i = or i32 %add8.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i)
  %tobool.not.i = icmp eq i32 %add11.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.end

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i.if.end13.i_crit_edge, %do.body.i.if.end13.i_crit_edge
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %8
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.end13.i.do.body.i_crit_edge, label %get_burstcount.exit.thread

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

get_burstcount.exit.thread:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %sub = sub i32 %count, %size.0
  %18 = call i32 @llvm.umin.i32(i32 %add11.i, i32 %sub)
  %19 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr = trunc i32 %19 to i8
  %20 = shl i8 %.tr, 4
  %conv = or i8 %20, 5
  %arrayidx = getelementptr i8, ptr %buf, i32 %size.0
  %call6 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv, ptr noundef %arrayidx, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  %add = select i1 %cmp7, i32 %18, i32 0
  %size.1 = add i32 %add, %size.0
  %not.cmp7 = xor i1 %cmp7, true
  %inc = zext i1 %not.cmp7 to i8
  %retries.1 = add i8 %retries.0, %inc
  %cmp16 = icmp ugt i8 %retries.1, 50
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %get_burstcount.exit.thread, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %get_burstcount.exit.thread ], [ %size.0, %while.cond.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_stat(ptr nocapture noundef readnone %chip, i8 noundef zeroext %mask, i32 noundef %timeout, ptr nocapture noundef writeonly %status) unnamed_addr #2 align 64 {
entry:
  %buf.i27 = alloca i8, align 1
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %i.0.i = phi i8 [ 0, %entry ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %1 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i = trunc i32 %1 to i8
  %2 = shl i8 %.tr.i, 4
  %conv.i = or i8 %2, 1
  %call.i = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.tpm_tis_i2c_status.exit_crit_edge, label %if.end.i

do.body.i.tpm_tis_i2c_status.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_tis_i2c_status.exit

if.end.i:                                         ; preds = %do.body.i
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp3.i = icmp eq i8 %4, -1
  %inc.i = add nuw nsw i8 %i.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %i.0.i)
  %cmp6.i = icmp ult i8 %i.0.i, 9
  %or.cond.i = select i1 %cmp3.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.tpm_tis_i2c_status.exit_crit_edge

if.end.i.tpm_tis_i2c_status.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_tis_i2c_status.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

tpm_tis_i2c_status.exit:                          ; preds = %if.end.i.tpm_tis_i2c_status.exit_crit_edge, %do.body.i.tpm_tis_i2c_status.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %do.body.i.tpm_tis_i2c_status.exit_crit_edge ], [ %4, %if.end.i.tpm_tis_i2c_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  %conv = zext i8 %retval.0.i to i32
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i)
  %cmp.not = icmp ne i8 %retval.0.i, -1
  %and26 = and i8 %retval.0.i, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and26, i8 %mask)
  %cmp4 = icmp eq i8 %and26, %mask
  %or.cond = and i1 %cmp.not, %cmp4
  br i1 %or.cond, label %tpm_tis_i2c_status.exit.cleanup_crit_edge, label %if.end

tpm_tis_i2c_status.exit.cleanup_crit_edge:        ; preds = %tpm_tis_i2c_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %tpm_tis_i2c_status.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = add i32 %6, %timeout
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i27) #7
  %8 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i27, align 1
  br label %do.body.i33

do.body.i33:                                      ; preds = %if.end.i38.do.body.i33_crit_edge, %do.body
  %i.0.i28 = phi i8 [ 0, %do.body ], [ %inc.i35, %if.end.i38.do.body.i33_crit_edge ]
  %9 = load i32, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 1), align 4
  %.tr.i29 = trunc i32 %9 to i8
  %10 = shl i8 %.tr.i29, 4
  %conv.i30 = or i8 %10, 1
  %call.i31 = call fastcc i32 @iic_tpm_read(i8 noundef zeroext %conv.i30, ptr noundef nonnull %buf.i27, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %do.body.i33.tpm_tis_i2c_status.exit40_crit_edge, label %if.end.i38

do.body.i33.tpm_tis_i2c_status.exit40_crit_edge:  ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_tis_i2c_status.exit40

if.end.i38:                                       ; preds = %do.body.i33
  %11 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.i27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp3.i34 = icmp eq i8 %12, -1
  %inc.i35 = add nuw nsw i8 %i.0.i28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %i.0.i28)
  %cmp6.i36 = icmp ult i8 %i.0.i28, 9
  %or.cond.i37 = select i1 %cmp3.i34, i1 %cmp6.i36, i1 false
  br i1 %or.cond.i37, label %if.end.i38.do.body.i33_crit_edge, label %if.end.i38.tpm_tis_i2c_status.exit40_crit_edge

if.end.i38.tpm_tis_i2c_status.exit40_crit_edge:   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_tis_i2c_status.exit40

if.end.i38.do.body.i33_crit_edge:                 ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i33

tpm_tis_i2c_status.exit40:                        ; preds = %if.end.i38.tpm_tis_i2c_status.exit40_crit_edge, %do.body.i33.tpm_tis_i2c_status.exit40_crit_edge
  %retval.0.i39 = phi i8 [ 0, %do.body.i33.tpm_tis_i2c_status.exit40_crit_edge ], [ %12, %if.end.i38.tpm_tis_i2c_status.exit40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i27) #7
  %conv7 = zext i8 %retval.0.i39 to i32
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7, ptr %status, align 4
  %and925 = and i8 %retval.0.i39, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and925, i8 %mask)
  %cmp11 = icmp eq i8 %and925, %mask
  br i1 %cmp11, label %tpm_tis_i2c_status.exit40.cleanup_crit_edge, label %do.cond

tpm_tis_i2c_status.exit40.cleanup_crit_edge:      ; preds = %tpm_tis_i2c_status.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond:                                          ; preds = %tpm_tis_i2c_status.exit40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %14, %7
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %tpm_tis_i2c_status.exit40.cleanup_crit_edge, %tpm_tis_i2c_status.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tpm_tis_i2c_status.exit.cleanup_crit_edge ], [ -62, %do.cond.cleanup_crit_edge ], [ 0, %tpm_tis_i2c_status.exit40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iic_tpm_write_generic(i8 noundef zeroext %addr, ptr nocapture noundef readonly %buffer, i32 noundef %len, i32 noundef %sleep_low, i32 noundef %sleep_hi, i8 noundef zeroext %max_count) unnamed_addr #2 align 64 {
entry:
  %msg1 = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg1) #7
  %0 = getelementptr inbounds i8, ptr %msg1, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = load ptr, ptr @tpm_dev, align 4
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr2, align 2
  %5 = ptrtoint ptr %msg1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg1, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 2
  %7 = trunc i32 %len to i16
  %conv = add i16 %7, 1
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %len3, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 2), ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1260, i32 %len)
  %cmp = icmp ugt i32 %len, 1260
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock_ops.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void %19(ptr noundef %11, i32 noundef 2) #7
  store i8 %addr, ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 2), align 4
  %20 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tpm_inf_dev, ptr @tpm_dev, i32 0, i32 2, i32 1), ptr %buffer, i32 %len)
  %conv8 = zext i8 %max_count to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %max_count)
  %cmp928.not = icmp eq i8 %max_count, 0
  br i1 %cmp928.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.end6.for.body_crit_edge
  %count.029 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %21 = load ptr, ptr @tpm_dev, align 4
  %adapter11 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %adapter11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter11, align 8
  %call = call i32 @__i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp sgt i32 %call, 0
  br i1 %cmp12, label %for.body.for.end.loopexit_crit_edge, label %if.end15

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

if.end15:                                         ; preds = %for.body
  call void @usleep_range_state(i32 noundef %sleep_low, i32 noundef %sleep_hi, i32 noundef 2) #7
  %inc = add nuw nsw i32 %count.029, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %if.end15.for.end.loopexit_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end15.for.end.loopexit_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %if.end15.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp sgt i32 %call, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -5
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end6.for.end_crit_edge
  %rc.1 = phi i32 [ -5, %if.end6.for.end_crit_edge ], [ %phi.sel, %for.end.loopexit ]
  %24 = load ptr, ptr @tpm_dev, align 4
  %adapter16 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %adapter16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter16, align 8
  %lock_ops.i27 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %lock_ops.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock_ops.i27, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unlock_bus.i, align 4
  call void %30(ptr noundef %26, i32 noundef 2) #7
  call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %rc.1, %for.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg1) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_tpm_i2c_infineon__292_731_tpm_tis_i2c_driver_init6, !1, !"__initcall__kmod_tpm_i2c_infineon__292_731_tpm_tis_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 731, i32 1}
!2 = !{ptr @__exitcall_tpm_tis_i2c_driver_exit, !1, !"__exitcall_tpm_tis_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 732, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 733, i32 1}
!7 = !{ptr @__UNIQUE_ID_version295, !8, !"__UNIQUE_ID_version295", i1 false, i1 false}
!8 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 734, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file296, !14, !"__UNIQUE_ID_file296", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 735, i32 1}
!15 = !{ptr @__UNIQUE_ID_license297, !14, !"__UNIQUE_ID_license297", i1 false, i1 false}
!16 = !{ptr @tpm_tis_i2c_driver, !17, !"tpm_tis_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 720, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 691, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tpm_tis_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tpm_tis_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 696, i32 3}
!28 = !{ptr @tpm_tis_i2c_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tpm_tis_i2c_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @tpm_dev, !31, !"tpm_dev", i1 false, i1 false}
!31 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 71, i32 27}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 629, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tpm_tis_i2c_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tpm_tis_i2c_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 636, i32 3}
!39 = !{ptr @tpm_tis_i2c_init._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tpm_tis_i2c_init._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 646, i32 3}
!43 = !{ptr @tpm_tis_i2c_init._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tpm_tis_i2c_init._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 651, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tpm_tis_i2c_init._entry.19, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tpm_tis_i2c_init._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @tpm_tis_i2c, !51, !"tpm_tis_i2c", i1 false, i1 false}
!51 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 601, i32 35}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 482, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tpm_tis_i2c_recv._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tpm_tis_i2c_recv._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 495, i32 3}
!59 = !{ptr @tpm_tis_i2c_recv._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tpm_tis_i2c_recv._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 502, i32 3}
!63 = !{ptr @tpm_tis_i2c_recv._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tpm_tis_i2c_recv._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @tpm_tis_i2c_of_match, !66, !"tpm_tis_i2c_of_match", i1 false, i1 false}
!66 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 673, i32 34}
!67 = !{ptr @tpm_tis_i2c_ops, !68, !"tpm_tis_i2c_ops", i1 false, i1 false}
!68 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 682, i32 8}
!69 = !{ptr @tpm_tis_i2c_table, !70, !"tpm_tis_i2c_table", i1 false, i1 false}
!70 = !{!"../drivers/char/tpm/tpm_i2c_infineon.c", i32 663, i32 35}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
