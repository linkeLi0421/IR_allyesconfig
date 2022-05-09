; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/st33zp24/spi.c_pt.bc'
source_filename = "../drivers/char/tpm/st33zp24/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.st33zp24_phy_ops = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.st33zp24_dev = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.st33zp24_spi_phy = type { ptr, [3087 x i8], [3087 x i8], i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_tpm_st33zp24_spi__244_429_st33zp24_spi_driver_init6 = internal global ptr @st33zp24_spi_driver_init, section ".initcall6.init", align 4
@st33zp24_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @st33zp24_spi_id, ptr @st33zp24_spi_probe, ptr @st33zp24_spi_remove, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_st33zp24_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st33zp24_spi_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_st33zp24_spi_driver_exit = internal global ptr @st33zp24_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [61 x i8] c"tpm_st33zp24_spi.author=TPM support (TPMsupport@list.st.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [57 x i8] c"tpm_st33zp24_spi.description=STM TPM 1.2 SPI ST33 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version247 = internal constant [31 x i8] c"tpm_st33zp24_spi.version=1.3.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpm_st33zp24_spi\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file248 = internal constant [65 x i8] c"tpm_st33zp24_spi.file=drivers/char/tpm/st33zp24/tpm_st33zp24_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [29 x i8] c"tpm_st33zp24_spi.license=GPL\00", section ".modinfo", align 1
@st33zp24_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"st33zp24-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st33zp24-spi\00", [19 x i8] zeroinitializer }, align 32
@of_st33zp24_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st33zp24-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st33zp24_spi_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st33zp24_pm_suspend, ptr @st33zp24_pm_resume, ptr @st33zp24_pm_suspend, ptr @st33zp24_pm_resume, ptr @st33zp24_pm_suspend, ptr @st33zp24_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st33zp24_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: dev is NULL. Device is not accessible.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st33zp24_spi_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/tpm/st33zp24/spi.c\00", [32 x i8] zeroinitializer }, align 32
@st33zp24_spi_probe._entry_ptr = internal global ptr @st33zp24_spi_probe._entry, section ".printk_index", align 4
@spi_phy_ops = internal constant { %struct.st33zp24_phy_ops, [24 x i8] } { %struct.st33zp24_phy_ops { ptr @st33zp24_spi_send, ptr @st33zp24_spi_recv }, [24 x i8] zeroinitializer }, align 32
@st33zp24_spi_of_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 270, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"st33zp24_spi_of_request_resources\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st33zp24_spi_of_request_resources._entry_ptr = internal global ptr @st33zp24_spi_of_request_resources._entry, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpcpd-gpios\00", [20 x i8] zeroinitializer }, align 32
@st33zp24_spi_of_request_resources._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.6, i32 278, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to retrieve lpcpd-gpios from dts.\0A\00", [54 x i8] zeroinitializer }, align 32
@st33zp24_spi_of_request_resources._entry_ptr.14 = internal global ptr @st33zp24_spi_of_request_resources._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TPM IO LPCPD\00", [19 x i8] zeroinitializer }, align 32
@st33zp24_spi_of_request_resources._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.6, i32 291, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request lpcpd pin\0A\00", [35 x i8] zeroinitializer }, align 32
@st33zp24_spi_of_request_resources._entry_ptr.18 = internal global ptr @st33zp24_spi_of_request_resources._entry.16, section ".printk_index", align 4
@st33zp24_spi_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.19, ptr @.str.6, i32 309, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"st33zp24_spi_request_resources\00", [33 x i8] zeroinitializer }, align 32
@st33zp24_spi_request_resources._entry_ptr = internal global ptr @st33zp24_spi_request_resources._entry, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TPM IO_LPCPD\00", [19 x i8] zeroinitializer }, align 32
@st33zp24_spi_request_resources._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.6, i32 322, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s : reset gpio_request failed\0A\00", [32 x i8] zeroinitializer }, align 32
@st33zp24_spi_request_resources._entry_ptr.23 = internal global ptr @st33zp24_spi_request_resources._entry.21, section ".printk_index", align 4
@st33zp24_spi_acpi_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 244, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to retrieve lpcpd-gpios from acpi.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"st33zp24_spi_acpi_request_resources\00", [60 x i8] zeroinitializer }, align 32
@st33zp24_spi_acpi_request_resources._entry_ptr = internal global ptr @st33zp24_spi_acpi_request_resources._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 90, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 137, i64 138, i64 139, i64 144]
@__sancov_gen_cov_switch_values.27 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 90, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 137, i64 138, i64 139, i64 144]
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"st33zp24_spi_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 417, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 433, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"st33zp24_spi_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 396, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 419, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"of_st33zp24_spi_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 402, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"st33zp24_spi_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 414, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 344, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"spi_phy_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 216, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 270, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 275, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 277, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 289, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 291, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 309, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 319, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 321, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [35 x i8] c"../drivers/char/tpm/st33zp24/spi.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 244, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__UNIQUE_ID_version247, ptr @__exitcall_st33zp24_spi_driver_exit, ptr @__initcall__kmod_tpm_st33zp24_spi__244_429_st33zp24_spi_driver_init6, ptr @__modver_attr, ptr @st33zp24_spi_acpi_request_resources._entry, ptr @st33zp24_spi_acpi_request_resources._entry_ptr, ptr @st33zp24_spi_driver_exit, ptr @st33zp24_spi_of_request_resources._entry, ptr @st33zp24_spi_of_request_resources._entry.12, ptr @st33zp24_spi_of_request_resources._entry.16, ptr @st33zp24_spi_of_request_resources._entry_ptr, ptr @st33zp24_spi_of_request_resources._entry_ptr.14, ptr @st33zp24_spi_of_request_resources._entry_ptr.18, ptr @st33zp24_spi_probe._entry, ptr @st33zp24_spi_probe._entry_ptr, ptr @st33zp24_spi_request_resources._entry, ptr @st33zp24_spi_request_resources._entry.21, ptr @st33zp24_spi_request_resources._entry_ptr, ptr @st33zp24_spi_request_resources._entry_ptr.23, ptr @st33zp24_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @st33zp24_spi_id, ptr @.str.3, ptr @of_st33zp24_spi_match, ptr @st33zp24_spi_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @spi_phy_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_st33zp24_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_phy_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_of_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_of_request_resources._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_of_request_resources._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_request_resources._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_spi_acpi_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @st33zp24_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st33zp24_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @st33zp24_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_spi_probe(ptr noundef %dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %spi_xfer.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 6188, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %tobool7.not = icmp eq ptr %2, null
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.i61

land.lhs.true:                                    ; preds = %if.end5
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %land.lhs.true.if.end29_crit_edge, label %if.end.i

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end.i:                                         ; preds = %land.lhs.true
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %phy_id.i = getelementptr inbounds %struct.st33zp24_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_id.i, align 4
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %4, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.13) #8
  br label %if.end29.sink.split

if.end10.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @devm_gpio_request_one(ptr noundef nonnull %dev, i32 noundef %call.i.i, i32 noundef 2, ptr noundef nonnull @.str.15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end29.sink.split_crit_edge, label %st33zp24_spi_of_request_resources.exit

if.end10.i.if.end29.sink.split_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.sink.split

st33zp24_spi_of_request_resources.exit:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end.i61:                                       ; preds = %if.end5
  %driver_data.i.i.i58 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i58, align 4
  %driver_data.i.i59 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i59 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i59, align 4
  %phy_id.i60 = getelementptr inbounds %struct.st33zp24_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %phy_id.i60 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_id.i60, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %io_lpcpd5.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %io_lpcpd5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %io_lpcpd5.i, align 4
  %20 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %21 = icmp ult i32 %20, 2048
  br i1 %21, label %if.then8.i, label %if.end.i61.if.end29_crit_edge

if.end.i61.if.end29_crit_edge:                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then8.i:                                       ; preds = %if.end.i61
  %call11.i = tail call i32 @devm_gpio_request_one(ptr noundef nonnull %dev, i32 noundef %20, i32 noundef 2, ptr noundef nonnull @.str.20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then8.i.if.end29_crit_edge, label %st33zp24_spi_request_resources.exit

if.then8.i.if.end29_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

st33zp24_spi_request_resources.exit:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end29.sink.split:                              ; preds = %if.end10.i.if.end29.sink.split_crit_edge, %do.end8.i
  %call.i.i.sink = phi i32 [ -1, %do.end8.i ], [ %call.i.i, %if.end10.i.if.end29.sink.split_crit_edge ]
  %io_lpcpd20.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %10, i32 0, i32 3
  %22 = ptrtoint ptr %io_lpcpd20.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i.i.sink, ptr %io_lpcpd20.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.then8.i.if.end29_crit_edge, %if.end.i61.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge
  %latency1.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %call.i, i32 0, i32 4
  %23 = getelementptr inbounds i8, ptr %spi_xfer.i.i, i32 12
  %tx_buf1.i.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %call.i, i32 0, i32 1
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i.i, i32 0, i32 1
  %rx_buf2.i.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %call.i, i32 0, i32 2
  %arrayidx7.i.i = getelementptr %struct.st33zp24_spi_phy, ptr %call.i, i32 0, i32 1, i32 1
  %arrayidx9.i.i = getelementptr %struct.st33zp24_spi_phy, ptr %call.i, i32 0, i32 1, i32 2
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i.i, i32 0, i32 2
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i.i, i32 0, i32 18, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %st33zp24_spi_read8_reg.exit.i.while.body.i_crit_edge, %if.end29
  %latency.016.i = phi i32 [ 1, %if.end29 ], [ %add.i.i, %st33zp24_spi_read8_reg.exit.i.while.body.i_crit_edge ]
  %25 = ptrtoint ptr %latency1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %latency.016.i, ptr %latency1.i, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %spi_xfer.i.i) #5
  %28 = call ptr @memset(ptr %23, i32 0, i32 84)
  %29 = ptrtoint ptr %spi_xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx_buf1.i.i, ptr %spi_xfer.i.i, align 4
  %30 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rx_buf2.i.i, ptr %rx_buf.i.i, align 4
  %31 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %tx_buf1.i.i, align 1
  %32 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 20, ptr %arrayidx7.i.i, align 1
  %add.i.i = add nuw nsw i32 %latency.016.i, 1
  %33 = call ptr @memset(ptr %arrayidx9.i.i, i32 0, i32 %add.i.i)
  %34 = ptrtoint ptr %latency1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %latency1.i, align 4
  %add12.i.i = add i32 %35, 3
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add12.i.i, ptr %len.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %37 = call ptr @memset(ptr %24, i32 0, i32 40)
  %38 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %while.body.i.spi_sync_transfer.exit.i.i_crit_edge

while.body.i.spi_sync_transfer.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %while.body.i.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp13.i.i, label %st33zp24_spi_read8_reg.exit.i, label %st33zp24_spi_read8_reg.exit.thread.i

st33zp24_spi_read8_reg.exit.thread.i:             ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer.i.i) #5
  br label %st33zp24_spi_evaluate_latency.exit

st33zp24_spi_read8_reg.exit.i:                    ; preds = %spi_sync_transfer.exit.i.i
  %46 = ptrtoint ptr %latency1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %latency1.i, align 4
  %sub.i.i = add i32 %47, 1
  %arrayidx17.i.i = getelementptr %struct.st33zp24_spi_phy, ptr %call.i, i32 0, i32 2, i32 %sub.i.i
  %48 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx17.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i63 = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %latency.016.i)
  %cmp.i64 = icmp ult i32 %latency.016.i, 14
  %or.cond.i = select i1 %tobool.not.i63, i1 %cmp.i64, i1 false
  br i1 %or.cond.i, label %st33zp24_spi_read8_reg.exit.i.while.body.i_crit_edge, label %while.end.loopexit.i

st33zp24_spi_read8_reg.exit.i.while.body.i_crit_edge: ; preds = %st33zp24_spi_read8_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %st33zp24_spi_read8_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.le.i = zext i8 %49 to i32
  br label %st33zp24_spi_evaluate_latency.exit

st33zp24_spi_evaluate_latency.exit:               ; preds = %while.end.loopexit.i, %st33zp24_spi_read8_reg.exit.thread.i
  %ret.0.i21.i = phi i32 [ %call.i.i.i, %st33zp24_spi_read8_reg.exit.thread.i ], [ %conv.i.le.i, %while.end.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i21.i)
  %cmp2.i = icmp slt i32 %ret.0.i21.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add.i.i)
  %cmp3.i = icmp eq i32 %add.i.i, 15
  %spec.select.i = select i1 %cmp3.i, i32 -19, i32 %latency.016.i
  %retval.0.i65 = select i1 %cmp2.i, i32 %ret.0.i21.i, i32 %spec.select.i
  %50 = ptrtoint ptr %latency1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i65, ptr %latency1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i65)
  %cmp = icmp slt i32 %retval.0.i65, 1
  br i1 %cmp, label %st33zp24_spi_evaluate_latency.exit.cleanup_crit_edge, label %if.end33

st33zp24_spi_evaluate_latency.exit.cleanup_crit_edge: ; preds = %st33zp24_spi_evaluate_latency.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %st33zp24_spi_evaluate_latency.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %io_lpcpd = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %call.i, i32 0, i32 3
  %53 = ptrtoint ptr %io_lpcpd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %io_lpcpd, align 4
  %call35 = call i32 @st33zp24_probe(ptr noundef nonnull %call.i, ptr noundef nonnull @spi_phy_ops, ptr noundef nonnull %dev, i32 noundef %52, i32 noundef %54) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %st33zp24_spi_evaluate_latency.exit.cleanup_crit_edge, %st33zp24_spi_request_resources.exit, %st33zp24_spi_of_request_resources.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call35, %if.end33 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %st33zp24_spi_of_request_resources.exit ], [ %call11.i, %st33zp24_spi_request_resources.exit ], [ -19, %st33zp24_spi_evaluate_latency.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_spi_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @st33zp24_remove(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_spi_send(ptr noundef %phy_id, i8 noundef zeroext %tpm_register, ptr nocapture noundef readonly %tpm_data, i32 noundef %tpm_size) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %spi_xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %spi_xfer) #5
  %2 = getelementptr inbounds i8, ptr %spi_xfer, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %tx_buf1 = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1
  %4 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_buf1, ptr %spi_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 1
  %rx_buf2 = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 2
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_buf2, ptr %rx_buf, align 4
  %6 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %tx_buf1, align 1
  %arrayidx7 = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tpm_register, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tpm_size)
  %cmp = icmp sgt i32 %tpm_size, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %tpm_register)
  %cmp8 = icmp eq i8 %tpm_register, 36
  %or.cond = and i1 %cmp8, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = lshr i32 %tpm_size, 8
  %conv10 = trunc i32 %8 to i8
  %arrayidx13 = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx13, align 1
  %conv14 = trunc i32 %tpm_size to i8
  %arrayidx17 = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %total_length.0 = phi i32 [ 4, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %arrayidx19 = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1, i32 %total_length.0
  %11 = call ptr @memcpy(ptr %arrayidx19, ptr %tpm_data, i32 %tpm_size)
  %add = add i32 %total_length.0, %tpm_size
  %arrayidx21 = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1, i32 %add
  %latency = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 4
  %12 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %latency, align 4
  %14 = call ptr @memset(ptr %arrayidx21, i32 0, i32 %13)
  %15 = load i32, ptr %latency, align 4
  %add23 = add i32 %15, %add
  %len = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add23, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %17 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.spi_sync_transfer.exit_crit_edge

if.end.spi_sync_transfer.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %if.end.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp eq i32 %call.i, 0
  br i1 %cmp24, label %if.then26, label %spi_sync_transfer.exit.if.end32_crit_edge

spi_sync_transfer.exit.if.end32_crit_edge:        ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then26:                                        ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %latency, align 4
  %add29 = add i32 %add, -1
  %sub = add i32 %add29, %28
  %arrayidx30 = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 2, i32 %sub
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %30 to i32
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %spi_sync_transfer.exit.if.end32_crit_edge
  %ret.0 = phi i32 [ %conv31, %if.then26 ], [ %call.i, %spi_sync_transfer.exit.if.end32_crit_edge ]
  %conv33 = trunc i32 %ret.0 to i8
  %31 = zext i8 %conv33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv33, label %sw.epilog.i [
    i8 90, label %if.end32.st33zp24_status_to_errno.exit_crit_edge
    i8 -128, label %if.end32.sw.bb1.i_crit_edge
    i8 -127, label %if.end32.sw.bb1.i_crit_edge61
    i8 -126, label %if.end32.sw.bb1.i_crit_edge62
    i8 -125, label %if.end32.sw.bb1.i_crit_edge63
    i8 -124, label %if.end32.sw.bb1.i_crit_edge64
    i8 -123, label %if.end32.sw.bb1.i_crit_edge65
    i8 -118, label %if.end32.sw.bb1.i_crit_edge66
    i8 -117, label %if.end32.sw.bb1.i_crit_edge67
    i8 -112, label %if.end32.sw.bb1.i_crit_edge68
    i8 -122, label %if.end32.sw.bb2.i_crit_edge
    i8 -119, label %if.end32.sw.bb2.i_crit_edge69
    i8 0, label %sw.bb3.i
  ]

if.end32.sw.bb2.i_crit_edge69:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.end32.sw.bb2.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

if.end32.sw.bb1.i_crit_edge68:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge67:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge66:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge65:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge64:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge63:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge62:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge61:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end32.st33zp24_status_to_errno.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit

sw.bb1.i:                                         ; preds = %if.end32.sw.bb1.i_crit_edge, %if.end32.sw.bb1.i_crit_edge61, %if.end32.sw.bb1.i_crit_edge62, %if.end32.sw.bb1.i_crit_edge63, %if.end32.sw.bb1.i_crit_edge64, %if.end32.sw.bb1.i_crit_edge65, %if.end32.sw.bb1.i_crit_edge66, %if.end32.sw.bb1.i_crit_edge67, %if.end32.sw.bb1.i_crit_edge68
  br label %st33zp24_status_to_errno.exit

sw.bb2.i:                                         ; preds = %if.end32.sw.bb2.i_crit_edge, %if.end32.sw.bb2.i_crit_edge69
  br label %st33zp24_status_to_errno.exit

sw.bb3.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit

sw.epilog.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = and i32 %ret.0, 255
  br label %st33zp24_status_to_errno.exit

st33zp24_status_to_errno.exit:                    ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end32.st33zp24_status_to_errno.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %sw.epilog.i ], [ -38, %sw.bb3.i ], [ -90, %sw.bb2.i ], [ -71, %sw.bb1.i ], [ 0, %if.end32.st33zp24_status_to_errno.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_spi_recv(ptr noundef %phy_id, i8 noundef zeroext %tpm_register, ptr nocapture noundef writeonly %tpm_data, i32 noundef %tpm_size) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %spi_xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %spi_xfer.i) #5
  %2 = getelementptr inbounds i8, ptr %spi_xfer.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %tx_buf1.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1
  %4 = ptrtoint ptr %spi_xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_buf1.i, ptr %spi_xfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 1
  %rx_buf2.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 2
  %5 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_buf2.i, ptr %rx_buf.i, align 4
  %6 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_buf1.i, align 1
  %arrayidx7.i = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tpm_register, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 1, i32 2
  %latency.i = getelementptr inbounds %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 4
  %8 = ptrtoint ptr %latency.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %latency.i, align 4
  %add.i = add i32 %9, %tpm_size
  %10 = call ptr @memset(ptr %arrayidx9.i, i32 0, i32 %add.i)
  %11 = load i32, ptr %latency.i, align 4
  %add11.i = add i32 %tpm_size, 2
  %add12.i = add i32 %add11.i, %11
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add12.i, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_sync_transfer.exit.i_crit_edge

entry.spi_sync_transfer.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %entry.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tpm_size)
  %cmp.i = icmp sgt i32 %tpm_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp eq i32 %call.i.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %spi_sync_transfer.exit.i.st33zp24_spi_read8_reg.exit_crit_edge

spi_sync_transfer.exit.i.st33zp24_spi_read8_reg.exit_crit_edge: ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_spi_read8_reg.exit

if.then.i:                                        ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %latency.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %latency.i, align 4
  %sub.i = add i32 %24, 1
  %arrayidx17.i = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 2, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx17.i, align 1
  %conv.i = zext i8 %26 to i32
  %add.ptr.i = getelementptr %struct.st33zp24_spi_phy, ptr %phy_id, i32 0, i32 2, i32 2
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i, i32 %24
  %27 = call ptr @memcpy(ptr %tpm_data, ptr %add.ptr21.i, i32 %tpm_size)
  br label %st33zp24_spi_read8_reg.exit

st33zp24_spi_read8_reg.exit:                      ; preds = %if.then.i, %spi_sync_transfer.exit.i.st33zp24_spi_read8_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %conv.i, %if.then.i ], [ %call.i.i, %spi_sync_transfer.exit.i.st33zp24_spi_read8_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer.i) #5
  %conv = trunc i32 %ret.0.i to i8
  %28 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %conv, label %st33zp24_status_to_errno.exit [
    i8 90, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread7_crit_edge
    i8 -128, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge
    i8 -127, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge10
    i8 -126, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge11
    i8 -125, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge12
    i8 -124, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge13
    i8 -123, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge14
    i8 -118, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge15
    i8 -117, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge16
    i8 -112, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge17
    i8 -122, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge18
    i8 -119, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge19
    i8 0, label %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge20
  ]

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge20: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge19: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge18: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge17: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge16: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge15: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge14: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge13: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge12: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge11: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge10: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread7_crit_edge: ; preds = %st33zp24_spi_read8_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread7

st33zp24_status_to_errno.exit:                    ; preds = %st33zp24_spi_read8_reg.exit
  %conv.i4 = and i32 %ret.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i4)
  %tobool.not = icmp eq i32 %conv.i4, 0
  br i1 %tobool.not, label %st33zp24_status_to_errno.exit.st33zp24_status_to_errno.exit.thread7_crit_edge, label %st33zp24_status_to_errno.exit.st33zp24_status_to_errno.exit.thread_crit_edge

st33zp24_status_to_errno.exit.st33zp24_status_to_errno.exit.thread_crit_edge: ; preds = %st33zp24_status_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_status_to_errno.exit.st33zp24_status_to_errno.exit.thread7_crit_edge: ; preds = %st33zp24_status_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %st33zp24_status_to_errno.exit.thread7

st33zp24_status_to_errno.exit.thread7:            ; preds = %st33zp24_status_to_errno.exit.st33zp24_status_to_errno.exit.thread7_crit_edge, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread7_crit_edge
  br label %st33zp24_status_to_errno.exit.thread

st33zp24_status_to_errno.exit.thread:             ; preds = %st33zp24_status_to_errno.exit.thread7, %st33zp24_status_to_errno.exit.st33zp24_status_to_errno.exit.thread_crit_edge, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge10, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge11, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge12, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge13, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge14, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge15, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge16, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge17, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge18, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge19, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge20
  %29 = phi i32 [ %tpm_size, %st33zp24_status_to_errno.exit.thread7 ], [ %ret.0.i, %st33zp24_status_to_errno.exit.st33zp24_status_to_errno.exit.thread_crit_edge ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge10 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge11 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge12 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge13 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge14 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge15 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge16 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge17 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge18 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge19 ], [ %ret.0.i, %st33zp24_spi_read8_reg.exit.st33zp24_status_to_errno.exit.thread_crit_edge20 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st33zp24_pm_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_tpm_st33zp24_spi__244_429_st33zp24_spi_driver_init6, !1, !"__initcall__kmod_tpm_st33zp24_spi__244_429_st33zp24_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 429, i32 1}
!2 = !{ptr @__exitcall_st33zp24_spi_driver_exit, !1, !"__exitcall_st33zp24_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author245, !4, !"__UNIQUE_ID_author245", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 431, i32 1}
!5 = !{ptr @__UNIQUE_ID_description246, !6, !"__UNIQUE_ID_description246", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 432, i32 1}
!7 = !{ptr @__UNIQUE_ID_version247, !8, !"__UNIQUE_ID_version247", i1 false, i1 false}
!8 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 433, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file248, !14, !"__UNIQUE_ID_file248", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 434, i32 1}
!15 = !{ptr @__UNIQUE_ID_license249, !14, !"__UNIQUE_ID_license249", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 419, i32 11}
!18 = !{ptr @st33zp24_spi_driver, !19, !"st33zp24_spi_driver", i1 false, i1 false}
!19 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 417, i32 26}
!20 = !{ptr @st33zp24_spi_id, !21, !"st33zp24_spi_id", i1 false, i1 false}
!21 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 396, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 344, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @st33zp24_spi_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @st33zp24_spi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 270, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @st33zp24_spi_of_request_resources._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @st33zp24_spi_of_request_resources._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 275, i32 31}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 277, i32 3}
!39 = !{ptr @st33zp24_spi_of_request_resources._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @st33zp24_spi_of_request_resources._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 289, i32 25}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 291, i32 3}
!45 = !{ptr @st33zp24_spi_of_request_resources._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @st33zp24_spi_of_request_resources._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 309, i32 3}
!49 = !{ptr @st33zp24_spi_request_resources._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @st33zp24_spi_request_resources._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 319, i32 5}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 321, i32 4}
!55 = !{ptr @st33zp24_spi_request_resources._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @st33zp24_spi_request_resources._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 242, i32 36}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 244, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @st33zp24_spi_acpi_request_resources._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @st33zp24_spi_acpi_request_resources._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"acpi_st33zp24_gpios", i1 false, i1 false}
!65 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 223, i32 39}
!66 = distinct !{null, !67, !"lpcpd_gpios", i1 false, i1 false}
!67 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 221, i32 38}
!68 = !{ptr @spi_phy_ops, !69, !"spi_phy_ops", i1 false, i1 false}
!69 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 216, i32 38}
!70 = !{ptr @of_st33zp24_spi_match, !71, !"of_st33zp24_spi_match", i1 false, i1 false}
!71 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 402, i32 34}
!72 = !{ptr @st33zp24_spi_ops, !73, !"st33zp24_spi_ops", i1 false, i1 false}
!73 = !{!"../drivers/char/tpm/st33zp24/spi.c", i32 414, i32 8}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
