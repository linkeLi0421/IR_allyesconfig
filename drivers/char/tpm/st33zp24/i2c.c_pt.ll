; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/st33zp24/i2c.c_pt.bc'
source_filename = "../drivers/char/tpm/st33zp24/i2c.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.st33zp24_phy_ops = type { ptr, ptr }
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
%struct.st33zp24_dev = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.st33zp24_i2c_phy = type { ptr, [2049 x i8], i32 }

@__initcall__kmod_tpm_st33zp24_i2c__290_312_st33zp24_i2c_driver_init6 = internal global ptr @st33zp24_i2c_driver_init, section ".initcall6.init", align 4
@st33zp24_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @st33zp24_i2c_probe, ptr @st33zp24_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_st33zp24_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st33zp24_i2c_ops, ptr null, ptr null }, ptr @st33zp24_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_st33zp24_i2c_driver_exit = internal global ptr @st33zp24_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [61 x i8] c"tpm_st33zp24_i2c.author=TPM support (TPMsupport@list.st.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"tpm_st33zp24_i2c.description=STM TPM 1.2 I2C ST33 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [31 x i8] c"tpm_st33zp24_i2c.version=1.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpm_st33zp24_i2c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file294 = internal constant [65 x i8] c"tpm_st33zp24_i2c.file=drivers/char/tpm/st33zp24/tpm_st33zp24_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [29 x i8] c"tpm_st33zp24_i2c.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st33zp24-i2c\00", [19 x i8] zeroinitializer }, align 32
@of_st33zp24_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st33zp24-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st33zp24_i2c_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st33zp24_pm_suspend, ptr @st33zp24_pm_resume, ptr @st33zp24_pm_suspend, ptr @st33zp24_pm_resume, ptr @st33zp24_pm_suspend, ptr @st33zp24_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st33zp24_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"st33zp24-i2c\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@st33zp24_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: i2c client is NULL. Device not accessible.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st33zp24_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/tpm/st33zp24/i2c.c\00", [32 x i8] zeroinitializer }, align 32
@st33zp24_i2c_probe._entry_ptr = internal global ptr @st33zp24_i2c_probe._entry, section ".printk_index", align 4
@st33zp24_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 232, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"client not i2c capable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st33zp24_i2c_probe._entry_ptr.11 = internal global ptr @st33zp24_i2c_probe._entry.7, section ".printk_index", align 4
@i2c_phy_ops = internal constant { %struct.st33zp24_phy_ops, [24 x i8] } { %struct.st33zp24_phy_ops { ptr @st33zp24_i2c_send, ptr @st33zp24_i2c_recv }, [24 x i8] zeroinitializer }, align 32
@st33zp24_i2c_of_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 152, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"st33zp24_i2c_of_request_resources\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@st33zp24_i2c_of_request_resources._entry_ptr = internal global ptr @st33zp24_i2c_of_request_resources._entry, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpcpd-gpios\00", [20 x i8] zeroinitializer }, align 32
@st33zp24_i2c_of_request_resources._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.6, i32 160, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to retrieve lpcpd-gpios from dts.\0A\00", [54 x i8] zeroinitializer }, align 32
@st33zp24_i2c_of_request_resources._entry_ptr.18 = internal global ptr @st33zp24_i2c_of_request_resources._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TPM IO LPCPD\00", [19 x i8] zeroinitializer }, align 32
@st33zp24_i2c_of_request_resources._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.6, i32 173, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request lpcpd pin\0A\00", [35 x i8] zeroinitializer }, align 32
@st33zp24_i2c_of_request_resources._entry_ptr.22 = internal global ptr @st33zp24_i2c_of_request_resources._entry.20, section ".printk_index", align 4
@st33zp24_i2c_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.23, ptr @.str.6, i32 191, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"st33zp24_i2c_request_resources\00", [33 x i8] zeroinitializer }, align 32
@st33zp24_i2c_request_resources._entry_ptr = internal global ptr @st33zp24_i2c_request_resources._entry, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TPM IO_LPCPD\00", [19 x i8] zeroinitializer }, align 32
@st33zp24_i2c_request_resources._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.6, i32 203, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@st33zp24_i2c_request_resources._entry_ptr.26 = internal global ptr @st33zp24_i2c_request_resources._entry.25, section ".printk_index", align 4
@st33zp24_i2c_acpi_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 126, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to retrieve lpcpd-gpios from acpi.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"st33zp24_i2c_acpi_request_resources\00", [60 x i8] zeroinitializer }, align 32
@st33zp24_i2c_acpi_request_resources._entry_ptr = internal global ptr @st33zp24_i2c_acpi_request_resources._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"st33zp24_i2c_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 300, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 316, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 302, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"of_st33zp24_i2c_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 285, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"st33zp24_i2c_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 297, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"st33zp24_i2c_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 279, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 226, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 232, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 97, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 152, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 157, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 159, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 171, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 173, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 191, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 201, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 203, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [35 x i8] c"../drivers/char/tpm/st33zp24/i2c.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 125, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version293, ptr @__exitcall_st33zp24_i2c_driver_exit, ptr @__initcall__kmod_tpm_st33zp24_i2c__290_312_st33zp24_i2c_driver_init6, ptr @__modver_attr, ptr @st33zp24_i2c_acpi_request_resources._entry, ptr @st33zp24_i2c_acpi_request_resources._entry_ptr, ptr @st33zp24_i2c_driver_exit, ptr @st33zp24_i2c_of_request_resources._entry, ptr @st33zp24_i2c_of_request_resources._entry.16, ptr @st33zp24_i2c_of_request_resources._entry.20, ptr @st33zp24_i2c_of_request_resources._entry_ptr, ptr @st33zp24_i2c_of_request_resources._entry_ptr.18, ptr @st33zp24_i2c_of_request_resources._entry_ptr.22, ptr @st33zp24_i2c_probe._entry, ptr @st33zp24_i2c_probe._entry.7, ptr @st33zp24_i2c_probe._entry_ptr, ptr @st33zp24_i2c_probe._entry_ptr.11, ptr @st33zp24_i2c_request_resources._entry, ptr @st33zp24_i2c_request_resources._entry.25, ptr @st33zp24_i2c_request_resources._entry_ptr, ptr @st33zp24_i2c_request_resources._entry_ptr.26, ptr @st33zp24_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @of_st33zp24_i2c_match, ptr @st33zp24_i2c_ops, ptr @st33zp24_i2c_id, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @i2c_phy_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_st33zp24_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_of_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_of_request_resources._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_of_request_resources._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_request_resources._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_i2c_acpi_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @st33zp24_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st33zp24_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @st33zp24_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool2.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2060, i32 noundef 3520) #4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data, align 8
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %land.lhs.true, label %if.end.i65

land.lhs.true:                                    ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %land.lhs.true.if.end37_crit_edge, label %if.end.i

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.end.i:                                         ; preds = %land.lhs.true
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %phy_id.i = getelementptr inbounds %struct.st33zp24_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_id.i, align 4
  %call.i.i59 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %cmp.i = icmp slt i32 %call.i.i59, 0
  br i1 %cmp.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %if.end37.sink.split

if.end10.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %call.i.i59, i32 noundef 2, ptr noundef nonnull @.str.19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end37.sink.split_crit_edge, label %st33zp24_i2c_of_request_resources.exit

if.end10.i.if.end37.sink.split_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.sink.split

st33zp24_i2c_of_request_resources.exit:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end.i65:                                       ; preds = %if.end12
  %driver_data.i.i.i62 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i62, align 4
  %driver_data.i.i63 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i63, align 4
  %phy_id.i64 = getelementptr inbounds %struct.st33zp24_dev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %phy_id.i64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_id.i64, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %8, align 4
  %io_lpcpd4.i = getelementptr inbounds %struct.st33zp24_i2c_phy, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %io_lpcpd4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %io_lpcpd4.i, align 4
  %26 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %26)
  %27 = icmp ult i32 %26, 2048
  br i1 %27, label %if.then7.i, label %if.end.i65.if.end37_crit_edge

if.end.i65.if.end37_crit_edge:                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then7.i:                                       ; preds = %if.end.i65
  %call10.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %26, i32 noundef 2, ptr noundef nonnull @.str.24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then7.i.if.end37_crit_edge, label %st33zp24_i2c_request_resources.exit

if.then7.i.if.end37_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

st33zp24_i2c_request_resources.exit:              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end37.sink.split:                              ; preds = %if.end10.i.if.end37.sink.split_crit_edge, %do.end8.i
  %call.i.i59.sink = phi i32 [ -1, %do.end8.i ], [ %call.i.i59, %if.end10.i.if.end37.sink.split_crit_edge ]
  %io_lpcpd20.i = getelementptr inbounds %struct.st33zp24_i2c_phy, ptr %16, i32 0, i32 2
  %28 = ptrtoint ptr %io_lpcpd20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i.i59.sink, ptr %io_lpcpd20.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.then7.i.if.end37_crit_edge, %if.end.i65.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %io_lpcpd = getelementptr inbounds %struct.st33zp24_i2c_phy, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %io_lpcpd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_lpcpd, align 4
  %call39 = tail call i32 @st33zp24_probe(ptr noundef nonnull %call.i, ptr noundef nonnull @i2c_phy_ops, ptr noundef %dev, i32 noundef %30, i32 noundef %32) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %st33zp24_i2c_request_resources.exit, %st33zp24_i2c_of_request_resources.exit, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %call39, %if.end37 ], [ -19, %do.end6 ], [ -19, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ -19, %st33zp24_i2c_of_request_resources.exit ], [ %call10.i, %st33zp24_i2c_request_resources.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @st33zp24_remove(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_i2c_send(ptr noundef %phy_id, i8 noundef zeroext %tpm_register, ptr nocapture noundef readonly %tpm_data, i32 noundef %tpm_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %tpm_register, -128
  %buf.i = getelementptr inbounds %struct.st33zp24_i2c_phy, ptr %phy_id, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %buf.i, align 4
  %add.ptr.i = getelementptr %struct.st33zp24_i2c_phy, ptr %phy_id, i32 0, i32 1, i32 1
  %2 = call ptr @memcpy(ptr %add.ptr.i, ptr %tpm_data, i32 %tpm_size)
  %3 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_id, align 4
  %add.i = add i32 %tpm_size, 1
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef %buf.i, i32 noundef %add.i, i16 noundef zeroext 0) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_i2c_recv(ptr noundef %phy_id, i8 noundef zeroext %tpm_register, ptr noundef %tpm_data, i32 noundef %tpm_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buf.i.i = getelementptr inbounds %struct.st33zp24_i2c_phy, ptr %phy_id, i32 0, i32 1
  %0 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %tpm_register, ptr %buf.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.st33zp24_i2c_phy, ptr %phy_id, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -86, ptr %add.ptr.i.i, align 1
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_id, align 4
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %buf.i.i, i32 noundef 2, i16 noundef zeroext 0) #4
  %conv1.i = and i32 %call.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv1.i)
  %cmp.i = icmp eq i32 %conv1.i, 2
  br i1 %cmp.i, label %if.then.i, label %entry.read8_reg.exit_crit_edge

entry.read8_reg.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %read8_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef %tpm_data, i32 noundef %tpm_size, i16 noundef zeroext 1) #4
  %.pre.i = and i32 %call.i.i, 255
  br label %read8_reg.exit

read8_reg.exit:                                   ; preds = %if.then.i, %entry.read8_reg.exit_crit_edge
  %conv5.pre-phi.i = phi i32 [ %.pre.i, %if.then.i ], [ %conv1.i, %entry.read8_reg.exit_crit_edge ]
  ret i32 %conv5.pre-phi.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_pm_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_tpm_st33zp24_i2c__290_312_st33zp24_i2c_driver_init6, !1, !"__initcall__kmod_tpm_st33zp24_i2c__290_312_st33zp24_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 312, i32 1}
!2 = !{ptr @__exitcall_st33zp24_i2c_driver_exit, !1, !"__exitcall_st33zp24_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 314, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 315, i32 1}
!7 = !{ptr @__UNIQUE_ID_version293, !8, !"__UNIQUE_ID_version293", i1 false, i1 false}
!8 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 316, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file294, !14, !"__UNIQUE_ID_file294", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 317, i32 1}
!15 = !{ptr @__UNIQUE_ID_license295, !14, !"__UNIQUE_ID_license295", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 302, i32 11}
!18 = !{ptr @st33zp24_i2c_driver, !19, !"st33zp24_i2c_driver", i1 false, i1 false}
!19 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 300, i32 26}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 226, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @st33zp24_i2c_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @st33zp24_i2c_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 232, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @st33zp24_i2c_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @st33zp24_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 152, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @st33zp24_i2c_of_request_resources._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @st33zp24_i2c_of_request_resources._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 157, i32 31}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 159, i32 3}
!42 = !{ptr @st33zp24_i2c_of_request_resources._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @st33zp24_i2c_of_request_resources._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 171, i32 25}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 173, i32 3}
!48 = !{ptr @st33zp24_i2c_of_request_resources._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st33zp24_i2c_of_request_resources._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 191, i32 3}
!52 = !{ptr @st33zp24_i2c_request_resources._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @st33zp24_i2c_request_resources._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 201, i32 5}
!56 = !{ptr @st33zp24_i2c_request_resources._entry.25, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 203, i32 4}
!58 = !{ptr @st33zp24_i2c_request_resources._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 123, i32 36}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 125, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @st33zp24_i2c_acpi_request_resources._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @st33zp24_i2c_acpi_request_resources._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"acpi_st33zp24_gpios", i1 false, i1 false}
!67 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 104, i32 39}
!68 = distinct !{null, !69, !"lpcpd_gpios", i1 false, i1 false}
!69 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 102, i32 38}
!70 = !{ptr @i2c_phy_ops, !71, !"i2c_phy_ops", i1 false, i1 false}
!71 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 97, i32 38}
!72 = !{ptr @of_st33zp24_i2c_match, !73, !"of_st33zp24_i2c_match", i1 false, i1 false}
!73 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 285, i32 34}
!74 = !{ptr @st33zp24_i2c_ops, !75, !"st33zp24_i2c_ops", i1 false, i1 false}
!75 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 297, i32 8}
!76 = !{ptr @st33zp24_i2c_id, !77, !"st33zp24_i2c_id", i1 false, i1 false}
!77 = !{!"../drivers/char/tpm/st33zp24/i2c.c", i32 279, i32 35}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
